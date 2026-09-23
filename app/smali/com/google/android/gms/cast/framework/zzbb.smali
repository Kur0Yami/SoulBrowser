.class public abstract Lcom/google/android/gms/cast/framework/zzbb;
.super Lcom/google/android/gms/internal/cast/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/zzbc;


# virtual methods
.method public final I1(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return v1

    .line 7
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    move-object p2, p0

    .line 19
    check-cast p2, Lcom/google/android/gms/cast/framework/zzbf;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/zzbf;->c:Lcom/google/android/gms/cast/framework/Session;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/Session;->h(Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    .line 33
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 40
    .line 41
    .line 42
    move-object p2, p0

    .line 43
    check-cast p2, Lcom/google/android/gms/cast/framework/zzbf;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/zzbf;->c:Lcom/google/android/gms/cast/framework/Session;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/Session;->d(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    .line 57
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 64
    .line 65
    .line 66
    move-object p2, p0

    .line 67
    check-cast p2, Lcom/google/android/gms/cast/framework/zzbf;

    .line 68
    .line 69
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/zzbf;->c:Lcom/google/android/gms/cast/framework/Session;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/Session;->e(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :pswitch_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    .line 81
    .line 82
    const p1, 0xbdfcb8

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_4
    move-object p1, p0

    .line 90
    check-cast p1, Lcom/google/android/gms/cast/framework/zzbf;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/zzbf;->c:Lcom/google/android/gms/cast/framework/Session;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->b()J

    .line 95
    .line 96
    .line 97
    move-result-wide p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :pswitch_5
    sget p1, Lcom/google/android/gms/internal/cast/zzc;->a:I

    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_0

    .line 112
    .line 113
    move v1, v0

    .line 114
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 115
    .line 116
    .line 117
    move-object p1, p0

    .line 118
    check-cast p1, Lcom/google/android/gms/cast/framework/zzbf;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/zzbf;->c:Lcom/google/android/gms/cast/framework/Session;

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/Session;->a(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :pswitch_6
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 130
    .line 131
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroid/os/Bundle;

    .line 136
    .line 137
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 138
    .line 139
    .line 140
    move-object p2, p0

    .line 141
    check-cast p2, Lcom/google/android/gms/cast/framework/zzbf;

    .line 142
    .line 143
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/zzbf;->c:Lcom/google/android/gms/cast/framework/Session;

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/Session;->f(Landroid/os/Bundle;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 153
    .line 154
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroid/os/Bundle;

    .line 159
    .line 160
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 161
    .line 162
    .line 163
    move-object p2, p0

    .line 164
    check-cast p2, Lcom/google/android/gms/cast/framework/zzbf;

    .line 165
    .line 166
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/zzbf;->c:Lcom/google/android/gms/cast/framework/Session;

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/Session;->g(Landroid/os/Bundle;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :pswitch_8
    move-object p1, p0

    .line 176
    check-cast p1, Lcom/google/android/gms/cast/framework/zzbf;

    .line 177
    .line 178
    new-instance p2, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 179
    .line 180
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/zzbf;->c:Lcom/google/android/gms/cast/framework/Session;

    .line 181
    .line 182
    invoke-direct {p2, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    .line 187
    .line 188
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/cast/zzc;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 189
    .line 190
    .line 191
    :goto_0
    return v0

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
