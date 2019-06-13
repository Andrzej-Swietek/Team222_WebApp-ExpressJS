import React from "react";
import Slider from "./slider"
import TASDletters from "./tasd-letters";
const Content = (props) => {
    return(
        <div>
            <Slider />
            <div className="zawartosc">
                Kontener
                <TASDletters />
            </div>
        </div>
              
    );
}
export default Content;