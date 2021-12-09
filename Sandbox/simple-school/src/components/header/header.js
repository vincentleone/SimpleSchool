import React from "react";
import styled from "styled-components";
import Title from "./title";
import Button1 from "./signup";

const MyHeader = styled.div`
    background: lightgrey;
    width: auto;
    display: flex;
    flex-direction: row;
`;

const HeaderContainer = styled.div`
    height: auto;
    width: auto;
    background: papayawhip;
    padding: 2em
`;

function Header () {
    return (
        <HeaderContainer>
            <MyHeader>
                <Title />
                <Button1 text="Sign-Up" color='blue' />
                <Button1 text="Login" color="blue"/>
            </MyHeader>
        </HeaderContainer> 
    )
}

export default Header;