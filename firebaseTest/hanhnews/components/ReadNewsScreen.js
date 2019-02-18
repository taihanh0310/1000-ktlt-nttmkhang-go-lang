import React, { Component } from 'react';
import { FlatList, StyleSheet, SafeAreaView, Linking } from 'react-native';
import { getNews } from '../news';
import Article from './Article';
import firebase from '../config/Firebase';

export class ReadNewsScreen extends Component {
  static navigationOptions = {
    title: 'Read news screen',
  };

  constructor(props) {
    super(props);
    this.state = { articles: [], refreshing: true };
    this.fetchNews = this.fetchNews.bind(this);
    this.ref = firebase.firestore().collection('boards');
  }

  componentDidMount() {
    this.fetchNews();
   }

  fetchNews() {
    getNews()
      .then(articles => this.setState({ articles, refreshing: false }))
      .catch(() => this.setState({ refreshing: false }));
  }

  handleRefresh() {
    this.setState(
      {
        refreshing: true
    },
      () => this.fetchNews()
    );
  }

  handleOpenLink(item){
    // log this to firebase
    this.ref.add({
      title: item.title,
      description: item.description,
      author: item.author,
    }).then((docRef) => {
      Linking.openURL(item.url).catch(err => console.warn('An error occurred', err));
    })
    .catch((error) => {
      console.warn("Error adding document: ", error);
    });
  }

  render() {
    return (
      <SafeAreaView style={styles.safeArea}>
        <FlatList
          data={this.state.articles}
          renderItem={({ item }) => <Article article={item} handleOpenLink={() =>  this.handleOpenLink(item)}/>}
          keyExtractor={item => item.url}
          refreshing={this.state.refreshing}
          onRefresh={this.handleRefresh.bind(this)}
        />
      </SafeAreaView>
  );
  }
}

export default ReadNewsScreen;

const styles = StyleSheet.create({
  safeArea: {
    flex: 1,
    backgroundColor: '#ddd'
  }
})

