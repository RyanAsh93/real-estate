import React from "react";
import "./App.css";
import { Container } from "semantic-ui-react";
import NavBar from "./Components/NavBar";
import { Switch, Route } from "react-router-dom";
import Available from "./Components/Screens/Available/Available";
import Cities from "./Components/Screens/Cities/Cities";

function App() {
  return (
    <>
      <NavBar />
      <Container>
        <Switch>
          <Route exact path="/" component={() => <h1>Home</h1>} />
          <Route exact path="/available" component={Available} />
          <Route exact path="/cities" component={Cities} />
          <Route exact path="/city_cost" component={() => <h1>city_cost</h1>} />
          {/* 
          <Route exact path="/available" component={Available} />
          
          <Route exact path="/find_home" component={FindHome} /> */}
        </Switch>
      </Container>
    </>
  );
}
export default App;
