import React from 'react'
import '../portfolio/portfolio.css'
import { useState } from 'react';
import Identicon from '../../../../identicon';
import axios from 'axios';

function Identicon_ui() {
  const [name, setName] = useState('');
  const [identicon, setIdenticon] = useState(null);
  const [errorMessage, setErrorMessage] = useState('');

  const handleNameChange = (event) => {
    setName(event.target.value);
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const response = await axios.post('/api/identicon', { name: name });
      setIdenticon(response.data);
      setErrorMessage('');
    } catch (error) {
      setErrorMessage('An error occurred while generating the Identicon. Please try again later.');
    }
  };

  const handleSave = () => {
    const link = document.createElement('a');
    link.download = `${name}_identicon.png`;
    link.href = identicon;
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <div className="portfolio__container">
      <div className="portfolio__item">
        <form onSubmit={handleSubmit}>
          <label>
            Name:
            <input type="text" value={name} onChange={handleNameChange} />
          </label>
          <button type="submit">Generate Identicon</button>
        </form>
        {identicon && (
          <div>
            <img className="portfolio__item-image" src={identicon} alt="Identicon" />
            <div className="portfolio__item-cta">
              <button onClick={handleSave}>Save</button>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}

export default Identicon_ui;