import React from "react";
import styled from "styled-components";

const MySignUpButton = styled.button`
    font-size: 1em;
    font-style: bold;
    text-align: center;
    padding-top: 0.1em;
    text-align: center;
    text-decoration: none;
    margin-left: 0.5em;
    margin-top: 1em;
    margin-bottom: 1em;
    border-radius: 0.5em;
    width: auto;
    height auto: 
   
    color: ${props => props.color};
    border-color: ${props => props.color};
    background-color: white;
    

`;


function Button1(props) {
    return (
        <MySignUpButton color={props.color}>
            {props.text}
        </MySignUpButton>
    )
}

export default Button1;