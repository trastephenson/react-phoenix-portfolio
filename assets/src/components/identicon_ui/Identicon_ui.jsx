
import React, { useState, useEffect, useRef } from 'react';
import '../portfolio/portfolio.css';

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
    link.href = canvasRef.current.toDataURL('image/png');

    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };


  const handleFetch = async () => {
    try {
      const response = await fetch('/api/identicon');
      const data = await response.json();
      console.log(data);
    } catch (error) {
      setErrorMessage('An error occurred while fetching the data. Please try again later.');
    }
  };

  useEffect(() => {
    if (identicon) {
      const canvas = canvasRef.current;
      const ctx = canvas.getContext('2d');
      const img = new Image();
      img.onload = () => {
        ctx.drawImage(img, 0, 0);
      };
      img.src = identicon;
    }
  }, [identicon]);



            <canvas className="portfolio__item-image" ref={canvasRef} width={200} height={200} />

            <img className="portfolio__item-image" src={identicon} alt="Identicon" />

      </div>
    </div>
  );
}

export default Identicon_ui;