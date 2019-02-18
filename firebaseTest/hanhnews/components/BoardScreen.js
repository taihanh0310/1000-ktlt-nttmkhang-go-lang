import React, { Component } from 'react';
import { StyleSheet, ScrollView, ActivityIndicator, View, Text } from 'react-native';
import { ListItem, Button, Icon } from 'react-native-elements';
import firebase from '../config/Firebase';

class BoardScreen extends Component {
  static navigationOptions = ({ navigation }) => {
    return {
      title: 'Board List',
      headerLeft: (
        <Button
          buttonStyle={{ padding: 0, backgroundColor: 'transparent' }}
          icon={{ name: 'add-circle-outline', style: { marginRight: 0, fontSize: 28 } }}
          onPress={() => { navigation.push('ReadNews') }}
        />
      ),
      headerRight: (
        <Button
          buttonStyle={{ padding: 0, backgroundColor: 'transparent' }}
          icon={{ name: 'add-circle', style: { marginRight: 0, fontSize: 28 } }}
          onPress={() => { navigation.push('AddBoard') }}
        />
      ),
    };
  };

  constructor() {
    super();
    this.ref = firebase.firestore().collection('boards').orderBy('title');
    this.unsubscribe = null;
    this.state = {
      isLoading: true,
      boards: []
    };
  }

  onCollectionUpdate = (querySnapshot) => {
    const boards = [];
    querySnapshot.forEach((doc) => {
      const { title, description, author } = doc.data();
      boards.push({
        key: doc.id,
        doc, // DocumentSnapshot
        title,
        description,
        author,
      });
    });
    this.setState({
      boards,
      isLoading: false,
   });
  }

  componentDidMount() {
    this.unsubscribe = this.ref.onSnapshot(this.onCollectionUpdate);
  }

  render() {
  if(this.state.isLoading){
    return(
      <View style={styles.activity}>
        <ActivityIndicator size="large" color="#0000ff"/>
      </View>
    )
  }
  return (
      <ScrollView style={styles.container}>
      {
        this.state.boards.map((item, i) => (
          <ListItem
            key={i}
            title={item.title}
            leftIcon={{name: 'book', type: 'font-awesome'}}
            onPress={() => {
              this.props.navigation.navigate('BoardDetails', {
                boardkey: `${JSON.stringify(item.key)}`,
              });
            }}
          />
        ))
      }
      </ScrollView>
    );
  }
}

const styles = StyleSheet.create({
  container: {
   flex: 1,
   paddingBottom: 22
  },
  item: {
    padding: 10,
    fontSize: 18,
    height: 44,
  },
  activity: {
    position: 'absolute',
    left: 0,
    right: 0,
    top: 0,
    bottom: 0,
    alignItems: 'center',
    justifyContent: 'center'
  }
})

export default BoardScreen;