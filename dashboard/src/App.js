import React from "react";

import SideMenu from "./components/SideMenu.jsx";
import Content from "./components/Content";
class App extends React.Component
{
  state = {
    temperature: undefined,
    city: undefined,
    country: undefined,
    humidity: undefined,
    description: undefined,
    error: undefined
  }

  
  
//state object do komunikacjji z danymi od uzytkownika

//poprzez propsy przesylamy wartosci zmiennych od klasy weather
  render(){ //renderujemy(tworzymy) nowy komponent ktory zwracac moze max 1 div
    return( 
      <div>
          <div className="wrapper">
            <div className="flexbox-menu">
              <nav>
                <SideMenu />
              </nav>
                
              
            </div>
            
            <div className="main">
              <div className="container">
                <div className="row">
                  <div className="col-sm-12">
                    <Content />
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div> 
    ); //rendering component previously created in file Titles.js => propsy  pod formularz
  }
};

export default App; // make this component avalible (public-ish) for other files



            
          