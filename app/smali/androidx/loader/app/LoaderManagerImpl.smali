.class Landroidx/loader/app/LoaderManagerImpl;
.super Landroidx/loader/app/LoaderManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;,
        Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;,
        Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/ViewModelStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl;->a:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 7
    .line 8
    sget-object v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->f:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 9
    .line 10
    invoke-direct {p1, p2, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 11
    .line 12
    .line 13
    const-class p2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->d:Landroidx/collection/SparseArrayCompat;

    .line 4
    .line 5
    iget v1, v0, Landroidx/collection/SparseArrayCompat;->g:I

    .line 6
    .line 7
    if-lez v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "Loaders:"

    .line 13
    .line 14
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "    "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    move v3, v2

    .line 36
    :goto_0
    iget v4, v0, Landroidx/collection/SparseArrayCompat;->g:I

    .line 37
    .line 38
    if-ge v3, v4, :cond_4

    .line 39
    .line 40
    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->f:[Ljava/lang/Object;

    .line 41
    .line 42
    aget-object v4, v4, v3

    .line 43
    .line 44
    check-cast v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 45
    .line 46
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v5, "  #"

    .line 50
    .line 51
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v5, v0, Landroidx/collection/SparseArrayCompat;->c:[I

    .line 55
    .line 56
    aget v5, v5, v3

    .line 57
    .line 58
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 59
    .line 60
    .line 61
    const-string v5, ": "

    .line 62
    .line 63
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v5, "mId="

    .line 77
    .line 78
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 82
    .line 83
    .line 84
    const-string v5, " mArgs="

    .line 85
    .line 86
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v6, "mLoader="

    .line 97
    .line 98
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v6, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->l:Landroidx/loader/content/Loader;

    .line 102
    .line 103
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v8, "  "

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v6, v7, p2, p3, p4}, Landroidx/loader/content/Loader;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v6, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 127
    .line 128
    if-eqz v6, :cond_0

    .line 129
    .line 130
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v6, "mCallbacks="

    .line 134
    .line 135
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v6, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 139
    .line 140
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object v6, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 144
    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v7, "mDeliveredData="

    .line 167
    .line 168
    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-boolean v6, v6, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->b:Z

    .line 172
    .line 173
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 174
    .line 175
    .line 176
    :cond_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v6, "mData="

    .line 180
    .line 181
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v6, v4, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    .line 185
    .line 186
    sget-object v7, Landroidx/lifecycle/LiveData;->k:Ljava/lang/Object;

    .line 187
    .line 188
    if-eq v6, v7, :cond_1

    .line 189
    .line 190
    move-object v5, v6

    .line 191
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const/16 v7, 0x40

    .line 194
    .line 195
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .line 197
    .line 198
    if-nez v5, :cond_2

    .line 199
    .line 200
    const-string v5, "null"

    .line 201
    .line 202
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v7, "{"

    .line 218
    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v5, "}"

    .line 234
    .line 235
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string v5, "mStarted="

    .line 249
    .line 250
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget v4, v4, Landroidx/lifecycle/LiveData;->c:I

    .line 254
    .line 255
    if-lez v4, :cond_3

    .line 256
    .line 257
    const/4 v4, 0x1

    .line 258
    goto :goto_2

    .line 259
    :cond_3
    move v4, v2

    .line 260
    :goto_2
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 261
    .line 262
    .line 263
    add-int/lit8 v3, v3, 0x1

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_4
    return-void
.end method

.method public final c(Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    .locals 8

    .line 1
    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zbc;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 4
    .line 5
    iget-boolean v2, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->e:Z

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->d:Landroidx/collection/SparseArrayCompat;

    .line 8
    .line 9
    if-nez v2, :cond_6

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-ne v2, v4, :cond_5

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 27
    .line 28
    iget-object v5, p0, Landroidx/loader/app/LoaderManagerImpl;->a:Ljava/lang/Object;

    .line 29
    .line 30
    if-nez v4, :cond_3

    .line 31
    .line 32
    const-string v4, "Object returned from onCreateLoader must not be a non-static inner member class: "

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    :try_start_0
    iput-boolean v6, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->e:Z

    .line 36
    .line 37
    invoke-interface {p1}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->b()Lcom/google/android/gms/auth/api/signin/internal/zbc;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 79
    .line 80
    invoke-direct {v0, v6}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroidx/loader/content/Loader;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v2, v0}, Landroidx/collection/SparseArrayCompat;->d(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    iput-boolean v2, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->e:Z

    .line 87
    .line 88
    new-instance v1, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 89
    .line 90
    iget-object v2, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->l:Landroidx/loader/content/Loader;

    .line 91
    .line 92
    invoke-direct {v1, v2, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;-><init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v5, v1}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 99
    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->h(Landroidx/lifecycle/Observer;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iput-object v5, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->m:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object v1, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 108
    .line 109
    return-object v2

    .line 110
    :goto_1
    iput-boolean v2, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->e:Z

    .line 111
    .line 112
    throw p1

    .line 113
    :cond_3
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 114
    .line 115
    iget-object v1, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->l:Landroidx/loader/content/Loader;

    .line 116
    .line 117
    invoke-direct {v0, v1, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;-><init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 124
    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    invoke-virtual {v4, p1}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->h(Landroidx/lifecycle/Observer;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iput-object v5, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->m:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v0, v4, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    const-string v0, "initLoader must be called on the main thread"

    .line 138
    .line 139
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string v0, "Called while creating a loader"

    .line 146
    .line 147
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl;->b:Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->d:Landroidx/collection/SparseArrayCompat;

    .line 4
    .line 5
    iget v1, v0, Landroidx/collection/SparseArrayCompat;->g:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->f:[Ljava/lang/Object;

    .line 11
    .line 12
    aget-object v3, v3, v2

    .line 13
    .line 14
    check-cast v3, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->k()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "LoaderManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl;->a:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "{"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "}}"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method
