import React from 'react'
import {
  GoogleMap,
  Marker,
  InfoWindow,
} from '@react-google-maps/api';

const containerStyle = {
  width: '100vw',
  height: '50vh'
};

const Map = (props) => {
  const center = {
    lat: props.center[0],
    lng: props.center[1]
  };

  return (
    <GoogleMap
      mapContainerStyle={containerStyle}
      center={center}
      zoom={10}
    >
      { /* Child components, such as markers, info windows, etc. */ }
      <></>
    </GoogleMap>
  )
}

export default React.memo(Map)
