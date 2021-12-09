import React from "react";
import styled from "styled-components";

const MyTitle = styled.h1`
    font-size: 2em;
    text-align: center;
    color: palevioletred;
`;

const TitlePadding = styled.div`
    margin-left: 0.5em;
`;

function Title() {
    return (
        <TitlePadding>
            <MyTitle>Simple School</MyTitle>
        </TitlePadding>
    )
}

export default Title;