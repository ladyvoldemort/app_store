import React, { Component } from 'react';
import { Switch, Route } from 'react-router-dom';
import NoMatch from './components/NoMatch';
import NavBar from './components/NavBar';
import Login from './components/Login';
import Register from './components/Register';
import Flash from './components/Flash';
import Home from './components/Home';
import ProtectedRoute from './components/ProtectedRoute';
import AuthRoute from './components/AuthRoute';
import FetchUser from './components/FetchUser';

class App extends Component {
  render() {
    return (
      <div>
        <NavBar />
        <Flash />
        <FetchUser>
          <Switch>
            <Route exact path='/' component={Home} />
            <AuthRoute exact path='/login' component={Login} />
            <AuthRoute exact path='/register' component={Register} />
            <ProtectedRoute exact path="/" component={Home} />
            <Route component={NoMatch} />
          </Switch>
        </FetchUser>
      </div>
    );
  }
}

export default App;
