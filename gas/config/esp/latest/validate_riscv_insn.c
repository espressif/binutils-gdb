		case 'd':
		  switch (*++oparg)
		    {
		    case 'i':
		      switch (*++oparg)
			{
			case '2':
			  used_bits |= ENCODE_ESP_IMM2 (-1U);
			  break;	/* Xedi2 */
			case '5':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_IMM5_0 (-1U);
			      break;	/* Xedi50 */
			    case '1':
			      used_bits |= ENCODE_ESP_IMM5_1 (-1U);
			      break;	/* Xedi51 */
			    default:	/* Xedi5[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			default:	/* Xedi[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    case 's':
		      switch (*++oparg)
			{
			case '0':
			  used_bits |= ENCODE_ESP_SHAMT_0 (-1U);
			  break;	/* Xeds0 */
			case '1':
			  used_bits |= ENCODE_ESP_SHAMT_1 (-1U);
			  break;	/* Xeds1 */
			default:	/* Xeds[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    default:	/* Xed[.] */
		      goto unknown_validate_operand;
		    }
		  break;
		case 'l':
		  switch (*++oparg)
		    {
		    case 'c':
		      used_bits |= ENCODE_ESP_LP_COUNT (-1U);
		      break;	/* Xelc */
		    case 'i':
		      used_bits |= ENCODE_ESP_LP_ID (-1U);
		      break;	/* Xeli */
		    case 'o':
		      switch (*++oparg)
			{
			case '1':
			  switch (*++oparg)
			    {
			    case '2':
			      used_bits |= ENCODE_ESP_LP_OFFSET_12 (-1U);
			      break;	/* Xelo12 */
			    default:	/* Xelo1[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			case '9':
			  used_bits |= ENCODE_ESP_LP_OFFSET_9 (-1U);
			  break;	/* Xelo9 */
			default:	/* Xelo[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    default:	/* Xel[.] */
		      goto unknown_validate_operand;
		    }
		  break;
		case 'o':
		  switch (*++oparg)
		    {
		    case '4':
		      switch (*++oparg)
			{
			case '4':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_OFFSET_16_16_0 (-1U);
			      break;	/* Xeo440 */
			    case '1':
			      used_bits |= ENCODE_ESP_OFFSET_16_16_1 (-1U);
			      break;	/* Xeo441 */
			    case '2':
			      used_bits |= ENCODE_ESP_OFFSET_16_16_2 (-1U);
			      break;	/* Xeo442 */
			    default:	/* Xeo44[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			default:	/* Xeo4[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    case '8':
		      switch (*++oparg)
			{
			case '4':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_OFFSET_256_16_0 (-1U);
			      break;	/* Xeo840 */
			    case '1':
			      used_bits |= ENCODE_ESP_OFFSET_256_16_1 (-1U);
			      break;	/* Xeo841 */
			    case '2':
			      used_bits |= ENCODE_ESP_OFFSET_256_16_2 (-1U);
			      break;	/* Xeo842 */
			    case '3':
			      used_bits |= ENCODE_ESP_OFFSET_256_16_3 (-1U);
			      break;	/* Xeo843 */
			    case '4':
			      used_bits |= ENCODE_ESP_OFFSET_256_16_4 (-1U);
			      break;	/* Xeo844 */
			    default:	/* Xeo84[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			case '0':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_OFFSET_256_1_0 (-1U);
			      break;	/* Xeo800 */
			    default:	/* Xeo80[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			case '1':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_OFFSET_256_2_0 (-1U);
			      break;	/* Xeo810 */
			    default:	/* Xeo81[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			case '2':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_OFFSET_256_4_0 (-1U);
			      break;	/* Xeo820 */
			    default:	/* Xeo82[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			case '3':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_OFFSET_256_8_0 (-1U);
			      break;	/* Xeo830 */
			    case '1':
			      used_bits |= ENCODE_ESP_OFFSET_256_8_1 (-1U);
			      break;	/* Xeo831 */
			    case '2':
			      used_bits |= ENCODE_ESP_OFFSET_256_8_2 (-1U);
			      break;	/* Xeo832 */
			    default:	/* Xeo83[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			default:	/* Xeo8[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    default:	/* Xeo[.] */
		      goto unknown_validate_operand;
		    }
		  break;
		case 'q':
		  switch (*++oparg)
		    {
		    case 'u':
		      used_bits |= ENCODE_ESP_QU (-1U);
		      break;	/* Xequ */
		    case 'v':
		      used_bits |= ENCODE_ESP_QV (-1U);
		      break;	/* Xeqv */
		    case 'w':
		      used_bits |= ENCODE_ESP_QW (-1U);
		      break;	/* Xeqw */
		    case 'x':
		      used_bits |= ENCODE_ESP_QX (-1U);
		      break;	/* Xeqx */
		    case 'y':
		      used_bits |= ENCODE_ESP_QY (-1U);
		      break;	/* Xeqy */
		    case 'z':
		      used_bits |= ENCODE_ESP_QZ (-1U);
		      break;	/* Xeqz */
		    default:	/* Xeq[.] */
		      goto unknown_validate_operand;
		    }
		  break;
		case 'r':
		  switch (*++oparg)
		    {
		    case 'c':
		      used_bits |= ENCODE_ESP_RD (-1U);
		      break;	/* Xerc */
		    case 'a':
		      switch (*++oparg)
			{
			case '0':
			  used_bits |= ENCODE_ESP_RS1_0 (-1U);
			  break;	/* Xera0 */
			case '1':
			  used_bits |= ENCODE_ESP_RS1_1 (-1U);
			  break;	/* Xera1 */
			default:	/* Xera[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    case 'b':
		      switch (*++oparg)
			{
			case '0':
			  used_bits |= ENCODE_ESP_RS2_0 (-1U);
			  break;	/* Xerb0 */
			case '1':
			  used_bits |= ENCODE_ESP_RS2_1 (-1U);
			  break;	/* Xerb1 */
			default:	/* Xerb[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    default:	/* Xer[.] */
		      goto unknown_validate_operand;
		    }
		  break;
		case 'v':
		  switch (*++oparg)
		    {
		    case 'r':
		      switch (*++oparg)
			{
			case '0':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_RM_00 (-1U);
			      break;	/* Xevr00 */
			    case '1':
			      used_bits |= ENCODE_ESP_RM_01 (-1U);
			      break;	/* Xevr01 */
			    case '2':
			      used_bits |= ENCODE_ESP_RM_02 (-1U);
			      break;	/* Xevr02 */
			    case '3':
			      used_bits |= ENCODE_ESP_RM_03 (-1U);
			      break;	/* Xevr03 */
			    case '4':
			      used_bits |= ENCODE_ESP_RM_04 (-1U);
			      break;	/* Xevr04 */
			    case '5':
			      used_bits |= ENCODE_ESP_RM_05 (-1U);
			      break;	/* Xevr05 */
			    case '6':
			      used_bits |= ENCODE_ESP_RM_06 (-1U);
			      break;	/* Xevr06 */
			    case '7':
			      used_bits |= ENCODE_ESP_RM_07 (-1U);
			      break;	/* Xevr07 */
			    case '8':
			      used_bits |= ENCODE_ESP_RM_08 (-1U);
			      break;	/* Xevr08 */
			    case '9':
			      used_bits |= ENCODE_ESP_RM_09 (-1U);
			      break;	/* Xevr09 */
			    default:	/* Xevr0[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			case '1':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_RM_10 (-1U);
			      break;	/* Xevr10 */
			    default:	/* Xevr1[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			default:	/* Xevr[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    case 's':
		      switch (*++oparg)
			{
			case '0':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_SAT_00 (-1U);
			      break;	/* Xevs00 */
			    case '1':
			      used_bits |= ENCODE_ESP_SAT_01 (-1U);
			      break;	/* Xevs01 */
			    case '2':
			      used_bits |= ENCODE_ESP_SAT_02 (-1U);
			      break;	/* Xevs02 */
			    case '3':
			      used_bits |= ENCODE_ESP_SAT_03 (-1U);
			      break;	/* Xevs03 */
			    case '4':
			      used_bits |= ENCODE_ESP_SAT_04 (-1U);
			      break;	/* Xevs04 */
			    case '5':
			      used_bits |= ENCODE_ESP_SAT_05 (-1U);
			      break;	/* Xevs05 */
			    case '6':
			      used_bits |= ENCODE_ESP_SAT_06 (-1U);
			      break;	/* Xevs06 */
			    case '7':
			      used_bits |= ENCODE_ESP_SAT_07 (-1U);
			      break;	/* Xevs07 */
			    case '8':
			      used_bits |= ENCODE_ESP_SAT_08 (-1U);
			      break;	/* Xevs08 */
			    case '9':
			      used_bits |= ENCODE_ESP_SAT_09 (-1U);
			      break;	/* Xevs09 */
			    default:	/* Xevs0[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			case '1':
			  switch (*++oparg)
			    {
			    case '0':
			      used_bits |= ENCODE_ESP_SAT_10 (-1U);
			      break;	/* Xevs10 */
			    case '1':
			      used_bits |= ENCODE_ESP_SAT_11 (-1U);
			      break;	/* Xevs11 */
			    case '2':
			      used_bits |= ENCODE_ESP_SAT_12 (-1U);
			      break;	/* Xevs12 */
			    case '3':
			      used_bits |= ENCODE_ESP_SAT_13 (-1U);
			      break;	/* Xevs13 */
			    case '4':
			      used_bits |= ENCODE_ESP_SAT_14 (-1U);
			      break;	/* Xevs14 */
			    case '5':
			      used_bits |= ENCODE_ESP_SAT_15 (-1U);
			      break;	/* Xevs15 */
			    case '6':
			      used_bits |= ENCODE_ESP_SAT_16 (-1U);
			      break;	/* Xevs16 */
			    default:	/* Xevs1[.] */
			      goto unknown_validate_operand;
			    }
			  break;
			default:	/* Xevs[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    default:	/* Xev[.] */
		      goto unknown_validate_operand;
		    }
		  break;
		case 's':
		  switch (*++oparg)
		    {
		    case '4':
		      switch (*++oparg)
			{
			case '0':
			  used_bits |= ENCODE_ESP_SELECT_16_0 (-1U);
			  break;	/* Xes40 */
			case '1':
			  used_bits |= ENCODE_ESP_SELECT_16_1 (-1U);
			  break;	/* Xes41 */
			case '2':
			  used_bits |= ENCODE_ESP_SELECT_16_2 (-1U);
			  break;	/* Xes42 */
			case '3':
			  used_bits |= ENCODE_ESP_SELECT_16_3 (-1U);
			  break;	/* Xes43 */
			default:	/* Xes4[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    case '1':
		      switch (*++oparg)
			{
			case '0':
			  used_bits |= ENCODE_ESP_SELECT_2_0 (-1U);
			  break;	/* Xes10 */
			case '1':
			  used_bits |= ENCODE_ESP_SELECT_2_1 (-1U);
			  break;	/* Xes11 */
			case '2':
			  used_bits |= ENCODE_ESP_SELECT_2_2 (-1U);
			  break;	/* Xes12 */
			case '3':
			  used_bits |= ENCODE_ESP_SELECT_2_3 (-1U);
			  break;	/* Xes13 */
			default:	/* Xes1[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    case '2':
		      switch (*++oparg)
			{
			case '0':
			  used_bits |= ENCODE_ESP_SELECT_4_0 (-1U);
			  break;	/* Xes20 */
			case '1':
			  used_bits |= ENCODE_ESP_SELECT_4_1 (-1U);
			  break;	/* Xes21 */
			case '2':
			  used_bits |= ENCODE_ESP_SELECT_4_2 (-1U);
			  break;	/* Xes22 */
			case '3':
			  used_bits |= ENCODE_ESP_SELECT_4_3 (-1U);
			  break;	/* Xes23 */
			case '4':
			  used_bits |= ENCODE_ESP_SELECT_4_4 (-1U);
			  break;	/* Xes24 */
			case '5':
			  used_bits |= ENCODE_ESP_SELECT_4_5 (-1U);
			  break;	/* Xes25 */
			case '6':
			  used_bits |= ENCODE_ESP_SELECT_4_6 (-1U);
			  break;	/* Xes26 */
			default:	/* Xes2[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    case '3':
		      switch (*++oparg)
			{
			case '0':
			  used_bits |= ENCODE_ESP_SELECT_8_0 (-1U);
			  break;	/* Xes30 */
			case '1':
			  used_bits |= ENCODE_ESP_SELECT_8_1 (-1U);
			  break;	/* Xes31 */
			case '2':
			  used_bits |= ENCODE_ESP_SELECT_8_2 (-1U);
			  break;	/* Xes32 */
			default:	/* Xes3[.] */
			  goto unknown_validate_operand;
			}
		      break;
		    default:	/* Xes[.] */
		      goto unknown_validate_operand;
		    }
		  break;
		case 'u':
		  used_bits |= ENCODE_ESP_UPD_4 (-1U);
		  break;	/* Xeu */
