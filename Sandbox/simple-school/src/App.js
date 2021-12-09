import logo from './logo.svg';
import styled from "styled-components";
import Header from "./components/header/header";

const MyApp = styled.div`
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
`;

function App() {
  return (
    <MyApp>
      <Header />
    </MyApp>
  );
}

export default App;
