import React, {Component} from "react";



export default class Slider extends Component {
    render(){
        
        return(
            <div>
                <section>
                    <div className="controls">
                        <ul>
                            <li><a href="#slide1"></a></li>
                            <li><a href="#slide2"></a></li>
                            <li><a href="#slide3"></a></li>
                            <li><a href="#slide4"></a></li>
                        </ul>
                    </div>
                    <div className="slider">
                        <div className="slide" id="slide1">
                            <img src="./img/img1.jpg"/>
                        </div>
                        <div className="slide" id="slide2">
                            <img src="./img/img1.jpg"/>
                        </div>                        
                        <div className="slide" id="slide3">
                            <img src="./img/img1.jpg"/>
                        </div>
                        <div className="slide" id="slide4">
                            <img src="./img/img1.jpg"/>
                        </div>
                    </div>
                </section>
    
            </div>
                  
        );
    }
  
}

