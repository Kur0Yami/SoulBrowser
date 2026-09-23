.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    .line 1
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->l(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->j(I)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->h()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 30
    .line 31
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->j(I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->m()Landroid/os/Parcelable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_1
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 46
    .line 47
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 48
    .line 49
    const/4 v4, 0x4

    .line 50
    invoke-virtual {p0, v1, v4}, Landroidx/versionedparcelable/VersionedParcel;->l(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 55
    .line 56
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 57
    .line 58
    const/4 v4, 0x5

    .line 59
    invoke-virtual {p0, v1, v4}, Landroidx/versionedparcelable/VersionedParcel;->l(II)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 64
    .line 65
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 66
    .line 67
    const/4 v4, 0x6

    .line 68
    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->j(I)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->m()Landroid/os/Parcelable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_2
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 80
    .line 81
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 82
    .line 83
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 84
    .line 85
    const/4 v4, 0x7

    .line 86
    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->j(I)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->n()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_3
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 100
    .line 101
    const/16 v4, 0x8

    .line 102
    .line 103
    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->j(I)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_4

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->n()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :goto_4
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 115
    .line 116
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 123
    .line 124
    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    packed-switch p0, :pswitch_data_0

    .line 128
    .line 129
    .line 130
    :pswitch_0
    goto :goto_5

    .line 131
    :pswitch_1
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 132
    .line 133
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 134
    .line 135
    return-object v0

    .line 136
    :pswitch_2
    new-instance p0, Ljava/lang/String;

    .line 137
    .line 138
    iget-object v3, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 139
    .line 140
    const-string v4, "UTF-16"

    .line 141
    .line 142
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-direct {p0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 147
    .line 148
    .line 149
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 150
    .line 151
    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 152
    .line 153
    if-ne v3, v2, :cond_5

    .line 154
    .line 155
    iget-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 156
    .line 157
    if-nez v2, :cond_5

    .line 158
    .line 159
    const-string v2, ":"

    .line 160
    .line 161
    const/4 v3, -0x1

    .line 162
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    aget-object p0, p0, v1

    .line 167
    .line 168
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 169
    .line 170
    :cond_5
    :goto_5
    return-object v0

    .line 171
    :pswitch_3
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 172
    .line 173
    if-eqz p0, :cond_6

    .line 174
    .line 175
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 176
    .line 177
    return-object v0

    .line 178
    :cond_6
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 179
    .line 180
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 181
    .line 182
    iput v3, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 183
    .line 184
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 185
    .line 186
    array-length p0, p0

    .line 187
    iput p0, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 188
    .line 189
    return-object v0

    .line 190
    :pswitch_4
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 191
    .line 192
    if-eqz p0, :cond_7

    .line 193
    .line 194
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 195
    .line 196
    return-object v0

    .line 197
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    const-string v0, "Invalid icon"

    .line 200
    .line 201
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->q(ZZ)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/versionedparcelable/VersionedParcel;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 16
    .line 17
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 18
    .line 19
    const-string v3, "UTF-16"

    .line 20
    .line 21
    packed-switch v2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    :pswitch_0
    goto :goto_0

    .line 25
    :pswitch_1
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, [B

    .line 45
    .line 46
    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_3
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_4
    if-eqz v1, :cond_0

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Landroid/graphics/Bitmap;

    .line 69
    .line 70
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .line 74
    .line 75
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 76
    .line 77
    const/16 v4, 0x5a

    .line 78
    .line 79
    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Landroid/os/Parcelable;

    .line 92
    .line 93
    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_5
    if-nez v1, :cond_9

    .line 97
    .line 98
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Landroid/os/Parcelable;

    .line 101
    .line 102
    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 103
    .line 104
    :goto_0
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 105
    .line 106
    const/4 v2, -0x1

    .line 107
    if-eq v2, v1, :cond_1

    .line 108
    .line 109
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->v(II)V

    .line 110
    .line 111
    .line 112
    :cond_1
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    const/4 v1, 0x2

    .line 117
    invoke-virtual {p1, v1}, Landroidx/versionedparcelable/VersionedParcel;->p(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->s([B)V

    .line 121
    .line 122
    .line 123
    :cond_2
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 124
    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    const/4 v1, 0x3

    .line 128
    invoke-virtual {p1, v1}, Landroidx/versionedparcelable/VersionedParcel;->p(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->w(Landroid/os/Parcelable;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 135
    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    const/4 v1, 0x4

    .line 139
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->v(II)V

    .line 140
    .line 141
    .line 142
    :cond_4
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    const/4 v1, 0x5

    .line 147
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->v(II)V

    .line 148
    .line 149
    .line 150
    :cond_5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    const/4 v1, 0x6

    .line 155
    invoke-virtual {p1, v1}, Landroidx/versionedparcelable/VersionedParcel;->p(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->w(Landroid/os/Parcelable;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 162
    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    const/4 v1, 0x7

    .line 166
    invoke-virtual {p1, v1}, Landroidx/versionedparcelable/VersionedParcel;->p(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->x(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 173
    .line 174
    if-eqz p0, :cond_8

    .line 175
    .line 176
    const/16 v0, 0x8

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->p(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p0}, Landroidx/versionedparcelable/VersionedParcel;->x(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    return-void

    .line 185
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 186
    .line 187
    const-string p1, "Can\'t serialize Icon created with IconCompat#createFromIcon"

    .line 188
    .line 189
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
