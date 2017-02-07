"Filed out from Dolphin Smalltalk 7"!

AbstractImageMatcherShell subclass: #CvImageMatcherShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CvImageMatcherShell guid: (GUID fromString: '{B18884FA-A4EF-4894-9C36-2509A2324826}')!
CvImageMatcherShell comment: ''!
!CvImageMatcherShell categoriesForClass!MVP-Presenters! !
!CvImageMatcherShell methodsFor!

imageClass
	^CvMat!

imageMatcherClass
	^CvImageMatcher! !
!CvImageMatcherShell categoriesFor: #imageClass!commands!private! !
!CvImageMatcherShell categoriesFor: #imageMatcherClass!commands!private! !

!CvImageMatcherShell class methodsFor!

icon

	"Generated from:
	self createIconMethod: #icon ofSize: 48@48 fromFile: 'C:\Users\Bower\Documents\Dolphin\Projects\Perceptest\images\wally.png'.
	"
	^InternalIcon fromBytes: #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 48 0 0 0 48 8 6 0 0 0 87 2 249 135 0 0 0 1 115 82 71 66 0 174 206 28 233 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 9 112 72 89 115 0 0 14 195 0 0 14 195 1 199 111 168 100 0 0 13 6 73 68 65 84 104 67 205 90 121 116 84 213 29 158 125 66 38 251 58 147 201 76 38 132 37 44 34 149 93 76 2 217 19 66 2 148 138 160 30 173 59 71 253 163 173 199 82 64 233 81 81 81 4 5 9 97 39 130 138 66 21 122 60 84 109 143 28 57 98 107 169 108 33 235 100 223 0 65 2 9 76 50 235 215 239 190 76 2 66 132 152 176 248 225 205 155 119 223 125 239 253 190 223 126 103 148 161 87 112 195 237 225 95 135 3 46 143 7 78 240 196 229 189 116 155 113 93 2 30 10 236 113 57 209 122 236 32 190 248 252 75 232 52 50 216 156 14 168 84 42 116 116 116 120 87 221 62 92 151 128 220 87 139 207 179 166 224 95 195 135 195 58 40 30 69 150 8 68 249 41 177 231 249 167 105 23 18 236 92 118 21 220 110 90 141 163 235 179 80 196 205 192 53 9 180 181 181 161 245 223 251 48 196 71 139 102 125 4 154 162 163 81 18 23 141 102 179 14 137 225 161 48 13 30 136 139 237 237 221 2 58 132 139 185 92 210 121 96 96 32 116 58 29 162 162 162 32 147 201 96 48 24 240 241 199 31 119 19 187 81 132 122 36 112 238 209 223 253 42 71 79 232 145 192 127 30 155 7 39 181 164 81 40 16 68 237 29 185 99 56 234 163 244 104 136 142 192 115 131 45 136 244 13 198 57 183 189 91 155 87 14 167 211 41 13 31 153 2 50 141 2 171 198 15 65 209 64 19 172 188 191 58 90 143 106 163 1 42 165 28 103 219 109 221 22 187 222 248 197 4 4 132 145 23 191 177 8 239 204 201 194 179 19 238 130 143 66 6 151 83 164 31 6 118 15 30 96 19 147 118 23 124 41 248 171 131 162 80 31 99 64 141 153 2 91 130 164 163 53 134 74 160 34 106 205 126 56 22 31 15 185 74 211 233 74 157 255 93 51 179 245 137 128 128 205 237 132 146 90 212 170 125 112 225 162 13 89 89 89 216 185 115 231 79 124 184 75 139 90 149 2 31 142 187 19 181 198 112 198 75 56 234 77 17 168 231 177 209 168 71 179 81 131 239 227 71 97 227 184 137 180 138 12 47 164 167 67 173 149 67 46 87 65 161 209 64 31 29 131 51 103 207 73 207 177 219 237 222 39 95 66 159 9 8 49 37 225 6 104 161 209 106 187 211 167 93 92 112 182 163 249 252 121 104 229 50 60 161 167 150 245 161 168 162 150 155 163 131 81 19 19 132 38 115 20 26 244 106 44 185 103 50 194 233 138 254 126 26 188 158 147 128 145 1 58 172 201 203 195 166 156 73 88 151 149 128 252 156 84 108 204 72 64 130 41 18 10 90 121 251 214 109 212 74 7 220 180 182 112 69 129 62 19 16 16 4 124 125 125 177 100 201 18 73 243 82 198 177 211 50 106 37 182 76 28 15 171 37 18 181 166 48 106 188 83 235 229 113 33 168 25 20 131 108 10 170 145 43 241 238 180 108 20 166 77 197 202 236 153 88 154 157 138 15 82 147 176 116 102 6 254 156 50 21 47 103 166 113 62 13 179 38 140 66 132 74 134 252 220 116 20 228 166 226 169 177 163 49 101 236 88 180 180 180 72 50 244 139 192 155 111 190 9 15 73 8 115 180 217 109 144 49 184 71 251 40 209 24 238 135 198 104 19 170 204 20 60 102 0 221 38 20 135 227 98 17 174 148 65 199 53 107 178 83 176 41 35 9 119 199 13 194 150 180 52 228 79 191 27 203 103 229 33 64 45 67 162 41 10 41 116 27 139 159 31 2 105 157 7 238 30 131 53 180 198 59 121 217 176 4 7 195 95 38 71 203 249 115 216 189 123 183 36 67 191 8 8 183 57 112 228 32 212 74 37 5 147 225 140 94 135 50 163 63 154 163 194 24 156 145 104 48 7 225 116 84 56 214 36 76 64 108 128 63 242 169 209 85 153 41 200 29 54 12 5 57 147 81 56 61 13 247 77 157 136 87 82 82 233 50 73 216 144 59 5 27 51 19 176 49 53 17 155 51 50 80 144 154 130 245 211 146 240 199 201 137 72 96 150 90 149 151 133 173 25 41 88 148 59 19 117 117 117 146 12 253 138 129 112 131 94 242 205 210 193 119 160 34 86 39 101 148 166 104 63 30 89 220 244 97 216 149 60 142 86 209 176 80 125 128 39 167 78 70 65 102 50 10 168 253 103 83 38 225 217 49 99 177 142 132 222 207 205 196 250 204 25 8 166 182 117 28 83 226 135 226 165 89 247 99 213 204 28 228 207 200 193 152 24 51 38 70 4 161 48 43 29 111 79 207 132 146 107 46 48 214 186 146 69 159 9 116 192 129 40 250 166 149 153 165 193 18 128 19 198 80 166 193 72 156 160 246 151 142 98 42 84 12 192 187 121 153 24 166 11 130 167 186 8 31 109 223 128 56 186 215 230 140 68 10 147 138 249 9 163 49 200 16 128 29 201 201 216 144 41 52 63 21 133 180 78 65 86 26 150 100 76 133 153 113 180 124 198 12 172 205 206 198 198 180 36 204 28 62 24 115 198 141 196 90 6 246 163 73 137 72 163 235 9 244 203 2 106 173 12 229 150 16 106 61 24 39 41 204 105 163 17 67 233 231 175 230 38 67 37 83 98 125 222 111 37 191 119 214 28 134 189 190 132 217 74 137 231 147 239 193 38 18 216 156 149 66 183 73 198 75 233 25 136 247 243 199 147 147 18 24 200 57 88 205 96 94 159 61 133 46 150 68 11 37 99 107 122 54 194 168 245 23 210 146 41 124 10 6 5 134 33 35 43 163 59 165 246 61 6 152 227 215 109 222 2 107 188 40 74 145 248 106 252 157 208 209 34 113 33 161 88 63 35 145 174 165 129 31 95 236 195 160 179 215 151 193 67 2 238 234 227 24 192 98 182 50 55 13 235 50 51 80 152 158 136 173 105 9 216 154 153 132 205 153 169 88 75 55 73 180 232 49 58 200 31 106 166 224 32 146 31 19 25 204 181 83 176 58 39 83 58 159 159 126 15 252 229 114 216 108 54 73 140 62 19 96 33 231 31 23 180 20 82 77 109 175 200 203 197 135 179 82 32 211 6 96 213 180 84 104 56 191 124 225 115 12 116 5 60 141 101 0 9 184 154 142 192 89 89 129 19 21 69 80 240 186 138 100 196 189 34 78 6 155 98 217 138 248 194 86 126 152 115 50 186 85 34 94 152 54 5 19 194 130 89 212 100 152 203 66 40 92 233 133 236 36 68 13 137 197 174 93 187 36 57 250 110 1 47 68 48 181 157 59 143 135 153 238 182 210 45 2 131 253 17 44 87 192 135 85 212 211 84 131 123 103 205 132 69 31 137 197 127 120 6 109 85 71 37 34 238 134 206 225 225 56 103 45 194 160 24 35 235 130 28 131 205 209 176 213 148 163 221 122 12 41 76 167 193 222 236 166 29 32 67 7 59 218 48 181 26 22 223 1 156 147 75 85 94 160 223 4 164 222 223 229 134 82 174 198 134 105 83 121 84 226 116 201 119 20 72 193 86 67 133 148 244 20 84 85 86 97 241 95 22 74 110 85 250 205 87 18 9 52 148 226 173 191 190 72 237 203 208 114 182 69 18 200 225 232 128 198 199 7 255 216 245 30 124 180 254 120 112 252 68 132 251 200 160 87 249 177 222 176 80 242 93 46 254 113 242 125 93 232 63 1 62 48 132 5 38 40 212 31 42 190 76 71 159 111 175 45 99 53 86 75 126 218 149 238 196 209 73 151 83 43 148 112 54 85 162 181 188 152 132 20 210 181 203 33 170 187 82 169 64 107 93 53 20 60 14 97 191 212 222 84 11 53 159 215 19 250 77 192 233 114 72 237 181 179 230 24 60 199 75 233 219 74 106 79 131 225 195 239 144 174 11 205 202 233 30 130 128 160 34 163 63 43 21 42 105 51 147 155 155 43 173 17 27 30 13 93 174 157 155 32 129 69 139 22 73 235 20 140 145 237 107 243 209 90 91 44 173 239 9 253 38 192 62 154 26 83 193 222 108 133 193 207 23 3 168 225 199 31 121 8 122 131 169 83 235 108 186 46 215 158 248 220 222 212 128 175 247 238 198 220 185 115 189 179 128 197 98 233 206 44 43 86 172 192 138 215 94 193 202 165 47 50 9 168 225 203 61 130 176 76 79 232 127 16 115 8 33 141 145 70 41 91 236 255 100 7 142 29 216 47 245 69 93 129 214 5 65 72 180 31 46 6 175 179 161 66 210 250 149 16 107 132 197 158 121 226 97 56 235 42 164 12 229 113 58 188 87 175 70 255 45 224 133 139 26 18 1 233 168 60 6 95 81 69 95 126 177 219 117 4 132 6 7 13 137 71 198 228 241 240 212 21 195 81 91 132 111 191 216 203 123 228 184 104 107 231 253 236 100 217 38 43 85 74 108 47 40 224 62 67 3 71 117 9 119 104 74 73 73 63 135 27 70 192 225 113 99 249 91 43 209 81 83 12 173 146 46 83 93 14 91 163 149 185 94 38 249 175 24 143 204 153 201 12 84 38 89 64 100 34 79 163 72 165 86 169 102 136 122 226 71 50 63 88 143 112 174 12 185 108 21 220 188 54 246 174 49 183 134 128 128 8 198 169 19 198 225 219 189 123 208 116 252 32 171 111 41 221 128 5 172 185 146 66 151 194 94 91 130 79 10 55 194 125 162 18 110 198 76 197 247 7 224 16 53 161 182 20 142 250 98 180 82 227 160 107 21 237 251 12 39 202 14 161 249 248 33 233 153 215 194 13 37 32 32 186 197 139 21 71 241 251 251 239 165 48 37 120 125 225 2 180 84 151 194 93 87 42 181 19 237 141 21 216 188 102 21 242 151 47 67 93 209 127 225 108 44 133 171 246 56 58 78 55 178 125 80 2 92 55 34 206 12 27 215 126 250 193 182 171 226 232 74 220 80 2 34 152 229 44 96 115 166 165 65 193 163 135 154 13 209 13 64 0 183 157 137 220 73 93 96 37 246 52 150 75 221 169 84 204 234 202 224 96 77 184 115 196 16 12 101 21 222 177 230 109 169 58 107 153 102 213 204 108 58 182 22 183 220 2 194 95 47 182 219 16 18 22 70 215 40 163 31 23 83 208 98 216 42 203 177 248 185 63 97 32 5 237 138 9 57 155 191 199 230 205 166 123 213 0 140 7 97 13 79 125 57 130 67 194 164 231 92 203 247 187 112 195 9 116 65 20 165 157 155 243 37 2 194 117 122 51 92 92 235 106 40 71 108 108 156 247 41 215 199 77 35 32 160 98 93 112 51 56 123 18 182 167 225 110 56 142 109 171 223 97 222 191 182 223 95 142 155 74 32 36 40 72 202 54 151 4 164 134 155 120 206 108 228 168 61 10 187 72 167 252 220 77 130 153 202 135 253 79 175 124 199 139 155 74 160 195 102 71 201 129 175 187 5 4 173 177 247 253 45 180 140 216 7 112 255 123 215 8 198 7 131 218 123 221 205 116 171 210 176 134 120 139 95 111 112 83 9 8 136 214 1 245 21 212 254 101 154 190 106 148 195 73 114 7 191 252 28 13 13 13 222 59 123 135 155 78 96 217 178 101 172 3 229 82 77 232 89 120 225 90 76 167 44 122 42 182 30 63 215 180 253 28 110 58 1 1 21 27 187 214 170 35 82 134 105 175 44 98 96 151 179 176 113 155 217 68 225 27 25 23 167 74 177 230 141 87 80 97 173 246 222 209 123 220 18 2 2 99 198 78 146 114 191 240 127 25 55 61 74 105 112 111 192 161 96 209 170 176 90 189 43 127 25 110 25 129 51 167 79 227 199 178 34 182 209 199 225 169 41 193 169 210 239 161 15 8 130 156 189 190 32 214 87 252 34 2 98 241 175 113 244 132 30 9 136 190 68 124 161 212 219 97 19 199 139 118 86 101 59 206 93 108 65 99 209 183 232 168 56 130 142 170 98 92 168 60 202 120 56 140 142 226 67 48 198 26 97 111 107 197 5 86 239 14 238 13 218 174 120 206 245 70 79 232 187 77 189 16 153 188 173 221 197 141 138 75 218 232 68 114 168 216 251 132 171 125 240 240 3 243 48 255 177 71 240 192 180 233 152 127 223 60 200 116 50 248 179 106 203 228 106 188 183 122 131 180 185 233 218 8 245 21 189 38 32 222 227 225 102 70 124 237 33 164 62 114 248 127 24 53 106 180 244 69 237 111 252 229 40 30 57 2 85 230 80 52 24 67 81 57 48 2 39 140 193 168 177 24 80 109 138 64 45 231 27 163 3 81 31 29 134 58 179 63 234 205 193 176 14 140 67 60 201 202 52 42 44 92 180 4 110 56 152 90 157 124 7 143 222 119 246 6 63 33 112 101 110 22 218 233 214 16 15 175 189 182 20 114 181 22 15 69 81 40 10 89 105 12 194 137 40 95 84 153 196 247 166 161 157 63 41 245 98 52 137 47 138 77 161 168 49 7 224 100 100 8 14 36 140 65 172 138 65 174 86 96 211 142 15 133 32 189 174 19 50 37 247 162 211 167 79 199 133 179 231 145 191 102 61 162 217 6 155 45 102 12 29 54 18 79 63 53 95 250 189 87 236 121 247 252 237 19 46 39 139 211 21 40 27 60 16 77 6 63 148 12 14 71 179 33 2 103 168 217 122 115 32 234 76 122 156 52 70 82 211 28 166 72 233 92 28 155 162 245 104 228 124 157 248 58 158 22 170 39 225 19 6 241 99 31 21 97 9 68 141 201 140 202 104 146 51 104 240 105 114 2 183 157 10 44 88 176 160 83 194 235 64 178 128 112 139 207 30 127 16 197 67 226 80 59 58 30 214 145 113 216 55 110 4 90 183 21 72 139 126 2 198 82 187 240 34 42 232 130 228 87 103 1 219 73 160 244 32 202 30 127 20 40 222 15 28 252 10 56 188 15 167 223 203 7 78 113 159 240 221 23 64 209 1 192 245 3 112 232 27 96 207 71 204 213 95 242 65 141 188 151 247 187 218 216 43 29 130 199 206 243 142 115 124 71 171 100 1 145 118 15 29 58 228 125 113 207 232 118 161 243 43 94 194 15 6 19 154 77 58 52 153 124 249 217 136 83 145 122 184 165 31 217 46 181 189 146 67 121 173 43 14 237 156 97 100 72 255 46 130 107 25 204 236 147 197 182 141 238 199 163 75 204 113 183 37 29 237 92 235 238 124 154 208 128 83 40 128 159 57 33 230 237 188 95 186 198 75 194 117 197 54 179 176 176 16 62 62 62 216 191 127 255 37 119 190 12 94 2 188 240 207 191 163 201 108 236 246 211 58 142 6 139 30 248 177 66 136 117 91 33 172 97 50 153 48 123 246 108 239 204 37 116 19 112 111 122 23 205 81 194 103 189 4 132 191 70 135 163 58 38 130 133 225 246 255 95 41 2 217 217 89 136 50 24 188 103 2 192 255 1 151 210 98 130 69 96 234 183 0 0 0 0 73 69 78 68 174 66 96 130]!

initialize
	"
	self initialize.
	"
	Smalltalk developmentSystem addSamplesFolderIconFor: self description: 'OpenCV Image Matcher'!

uninitialize
	Smalltalk developmentSystem removeSystemFolderIconNamed: 'OpenCV Image Matcher'! !
!CvImageMatcherShell class categoriesFor: #icon!constants!public! !
!CvImageMatcherShell class categoriesFor: #initialize!public! !
!CvImageMatcherShell class categoriesFor: #uninitialize!public! !
