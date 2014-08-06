qf_varying vec2 v_TexCoord;
#ifdef NUM_LIGHTMAPS
qf_varying qf_lmvec01 v_LightmapTexCoord01;
#if NUM_LIGHTMAPS > 2 
qf_varying qf_lmvec23 v_LightmapTexCoord23;
#endif
#endif

qf_varying vec3 v_Position;

#if defined(APPLY_SPECULAR) || defined(APPLY_OFFSETMAPPING) || defined(APPLY_RELIEFMAPPING)
qf_varying vec3 v_EyeVector;
#endif

qf_varying mat3 v_StrMatrix; // directions of S/T/R texcoords (tangent, binormal, normal)

#if defined(APPLY_FOG) && !defined(APPLY_FOG_COLOR)
qf_varying vec2 v_FogCoord;
#endif