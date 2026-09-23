.class public final Lcom/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->a:Ljava/util/Map;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor;->b:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Abstract classes can\'t be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, "\nSee "

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, "r8-abstract-class"

    .line 48
    .line 49
    const-string v1, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/google/gson/reflect/TypeToken;Z)Lcom/google/gson/internal/ObjectConstructor;
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    .line 4
    .line 5
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/gson/InstanceCreator;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance p1, Lcom/google/gson/internal/a;

    .line 17
    .line 18
    invoke-direct {p1, v2, v0, v3}, Lcom/google/gson/internal/a;-><init>(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/google/gson/InstanceCreator;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance p1, Lcom/google/gson/internal/a;

    .line 32
    .line 33
    invoke-direct {p1, v1, v0, v2}, Lcom/google/gson/internal/a;-><init>(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;I)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    const-class v1, Ljava/util/EnumSet;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    new-instance v1, Lcom/google/gson/internal/b;

    .line 47
    .line 48
    invoke-direct {v1, v0, v3}, Lcom/google/gson/internal/b;-><init>(Ljava/lang/reflect/Type;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-class v1, Ljava/util/EnumMap;

    .line 53
    .line 54
    if-ne p1, v1, :cond_3

    .line 55
    .line 56
    new-instance v1, Lcom/google/gson/internal/b;

    .line 57
    .line 58
    invoke-direct {v1, v0, v2}, Lcom/google/gson/internal/b;-><init>(Ljava/lang/reflect/Type;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move-object v1, v4

    .line 63
    :goto_0
    if-eqz v1, :cond_4

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_4
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->b(Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    const/16 v6, 0x8

    .line 81
    .line 82
    sget-object v7, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->c:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 83
    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    :catch_0
    move-object v5, v4

    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :cond_5
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 90
    .line 91
    .line 92
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    if-eq v1, v7, :cond_7

    .line 94
    .line 95
    sget-object v8, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->a:Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;

    .line 96
    .line 97
    invoke-virtual {v8, v4, v5}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->a(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_6

    .line 102
    .line 103
    sget-object v8, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->h:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 104
    .line 105
    if-ne v1, v8, :cond_7

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_6

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v5, "Unable to invoke no-args constructor of "

    .line 121
    .line 122
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v5, "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."

    .line 129
    .line 130
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    new-instance v5, Lcom/google/gson/internal/c;

    .line 138
    .line 139
    invoke-direct {v5, v2, v3}, Lcom/google/gson/internal/c;-><init>(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    :goto_1
    if-ne v1, v7, :cond_8

    .line 144
    .line 145
    sget-object v8, Lcom/google/gson/internal/reflect/ReflectionHelper;->a:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    .line 146
    .line 147
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .line 149
    .line 150
    move-object v8, v4

    .line 151
    goto :goto_2

    .line 152
    :catch_1
    move-exception v8

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v10, "Failed making constructor \'"

    .line 156
    .line 157
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v5}, Lcom/google/gson/internal/reflect/ReflectionHelper;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v10, "\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    .line 168
    .line 169
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-static {v8}, Lcom/google/gson/internal/reflect/ReflectionHelper;->g(Ljava/lang/Exception;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    :goto_2
    if-eqz v8, :cond_8

    .line 191
    .line 192
    new-instance v5, Lcom/google/gson/internal/c;

    .line 193
    .line 194
    invoke-direct {v5, v8, v2}, Lcom/google/gson/internal/c;-><init>(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_8
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/c;

    .line 199
    .line 200
    invoke-direct {v2, v6, v5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/c;-><init>(ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    move-object v5, v2

    .line 204
    :goto_3
    if-eqz v5, :cond_9

    .line 205
    .line 206
    return-object v5

    .line 207
    :cond_9
    const-class v2, Ljava/util/Collection;

    .line 208
    .line 209
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    const/4 v5, 0x4

    .line 214
    const/4 v8, 0x3

    .line 215
    const/4 v9, 0x2

    .line 216
    const/16 v10, 0x9

    .line 217
    .line 218
    if-eqz v2, :cond_d

    .line 219
    .line 220
    const-class v0, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_a

    .line 227
    .line 228
    new-instance v4, Lcom/google/common/net/a;

    .line 229
    .line 230
    const/4 v0, 0x7

    .line 231
    invoke-direct {v4, v0}, Lcom/google/common/net/a;-><init>(I)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_6

    .line 235
    .line 236
    :cond_a
    const-class v0, Ljava/util/LinkedHashSet;

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_b

    .line 243
    .line 244
    new-instance v4, Lcom/google/common/net/a;

    .line 245
    .line 246
    invoke-direct {v4, v6}, Lcom/google/common/net/a;-><init>(I)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_6

    .line 250
    .line 251
    :cond_b
    const-class v0, Ljava/util/TreeSet;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    new-instance v4, Lcom/google/common/net/a;

    .line 260
    .line 261
    invoke-direct {v4, v10}, Lcom/google/common/net/a;-><init>(I)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_6

    .line 265
    .line 266
    :cond_c
    const-class v0, Ljava/util/ArrayDeque;

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_14

    .line 273
    .line 274
    new-instance v4, Lcom/google/common/net/a;

    .line 275
    .line 276
    const/16 v0, 0xa

    .line 277
    .line 278
    invoke-direct {v4, v0}, Lcom/google/common/net/a;-><init>(I)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_6

    .line 282
    .line 283
    :cond_d
    const-class v2, Ljava/util/Map;

    .line 284
    .line 285
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_14

    .line 290
    .line 291
    const-class v2, Lcom/google/gson/internal/LinkedTreeMap;

    .line 292
    .line 293
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_10

    .line 298
    .line 299
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    .line 300
    .line 301
    if-nez v2, :cond_e

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_e
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 305
    .line 306
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    array-length v2, v0

    .line 311
    if-nez v2, :cond_f

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_f
    aget-object v0, v0, v3

    .line 315
    .line 316
    invoke-static {v0}, Lcom/google/gson/internal/GsonTypes;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    const-class v2, Ljava/lang/String;

    .line 321
    .line 322
    if-ne v0, v2, :cond_10

    .line 323
    .line 324
    :goto_4
    new-instance v4, Lcom/google/common/net/a;

    .line 325
    .line 326
    invoke-direct {v4, v9}, Lcom/google/common/net/a;-><init>(I)V

    .line 327
    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_10
    :goto_5
    const-class v0, Ljava/util/LinkedHashMap;

    .line 331
    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_11

    .line 337
    .line 338
    new-instance v4, Lcom/google/common/net/a;

    .line 339
    .line 340
    invoke-direct {v4, v8}, Lcom/google/common/net/a;-><init>(I)V

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_11
    const-class v0, Ljava/util/TreeMap;

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_12

    .line 351
    .line 352
    new-instance v4, Lcom/google/common/net/a;

    .line 353
    .line 354
    invoke-direct {v4, v5}, Lcom/google/common/net/a;-><init>(I)V

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_12
    const-class v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 359
    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_13

    .line 365
    .line 366
    new-instance v4, Lcom/google/common/net/a;

    .line 367
    .line 368
    const/4 v0, 0x5

    .line 369
    invoke-direct {v4, v0}, Lcom/google/common/net/a;-><init>(I)V

    .line 370
    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_13
    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 374
    .line 375
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_14

    .line 380
    .line 381
    new-instance v4, Lcom/google/common/net/a;

    .line 382
    .line 383
    const/4 v0, 0x6

    .line 384
    invoke-direct {v4, v0}, Lcom/google/common/net/a;-><init>(I)V

    .line 385
    .line 386
    .line 387
    :cond_14
    :goto_6
    if-eqz v4, :cond_15

    .line 388
    .line 389
    return-object v4

    .line 390
    :cond_15
    invoke-static {p1}, Lcom/google/gson/internal/ConstructorConstructor;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    if-eqz v0, :cond_16

    .line 395
    .line 396
    new-instance p1, Lcom/google/gson/internal/c;

    .line 397
    .line 398
    invoke-direct {p1, v0, v9}, Lcom/google/gson/internal/c;-><init>(Ljava/lang/String;I)V

    .line 399
    .line 400
    .line 401
    return-object p1

    .line 402
    :cond_16
    const-string v0, "Unable to create instance of "

    .line 403
    .line 404
    if-nez p2, :cond_17

    .line 405
    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string p1, "; Register an InstanceCreator or a TypeAdapter for this type."

    .line 415
    .line 416
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    new-instance p2, Lcom/google/gson/internal/c;

    .line 424
    .line 425
    invoke-direct {p2, p1, v8}, Lcom/google/gson/internal/c;-><init>(Ljava/lang/String;I)V

    .line 426
    .line 427
    .line 428
    return-object p2

    .line 429
    :cond_17
    if-eq v1, v7, :cond_18

    .line 430
    .line 431
    new-instance p2, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    const-string p1, "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."

    .line 440
    .line 441
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    new-instance p2, Lcom/google/gson/internal/c;

    .line 449
    .line 450
    invoke-direct {p2, p1, v5}, Lcom/google/gson/internal/c;-><init>(Ljava/lang/String;I)V

    .line 451
    .line 452
    .line 453
    return-object p2

    .line 454
    :cond_18
    new-instance p2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/c;

    .line 455
    .line 456
    invoke-direct {p2, v10, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/c;-><init>(ILjava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
