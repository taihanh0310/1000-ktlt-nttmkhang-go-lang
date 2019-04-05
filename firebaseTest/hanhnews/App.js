
import React from 'react';
import { createStackNavigator, createAppContainer } from 'react-navigation';
import BoardScreen from './components/BoardScreen';
import BoardDetailScreen from './components/BoardDetailScreen';
import AddBoardScreen from './components/AddBoardScreen';
import EditBoardScreen from './components/EditBoardScreen';
import ReadNewsScreen from './components/ReadNewsScreen';

const RootStack = createStackNavigator({
  Board: BoardScreen,
  BoardDetails: BoardDetailScreen,
  AddBoard: AddBoardScreen,
  EditBoard: EditBoardScreen,
  ReadNews: ReadNewsScreen
}, {
  initialRouteName: 'Board',
  navigationOptions: {
    headerStyle: {
      backgroundColor: '#777777',
    },
    headerTintColor: '#fff',
    headerTitleStyle: {
      fontWeight: 'bold',
    },
  }
});

const AppContainer = createAppContainer(RootStack);

export default class App extends React.Component {
  render() {
    return <AppContainer/> ;
  }
}
