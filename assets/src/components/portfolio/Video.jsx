import React from 'react';

const Video = ({ videoId }) => {
  const videoUrl = `https://www.youtube.com/embed/3xAadIADHOw`;

  return (
    <iframe
      src={videoUrl}
      width="640"
      height="480"
      frameBorder="0"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
      allowFullScreen
    ></iframe>
  );
};

export default Video;