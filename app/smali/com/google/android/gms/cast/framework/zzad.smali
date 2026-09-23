.class public abstract Lcom/google/android/gms/cast/framework/zzad;
.super Lcom/google/android/gms/internal/cast/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/zzae;


# virtual methods
.method public final I1(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_6

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_4

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p1, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    const/4 p2, 0x5

    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    .line 20
    .line 21
    const p1, 0xbdfcb8

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 33
    .line 34
    .line 35
    move-object p2, p0

    .line 36
    check-cast p2, Lcom/google/android/gms/cast/framework/zzu;

    .line 37
    .line 38
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/zzu;->c:Lcom/google/android/gms/cast/framework/CastSession;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/CastSession;->l(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    .line 45
    .line 46
    return v0

    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 52
    .line 53
    .line 54
    move-object p2, p0

    .line 55
    check-cast p2, Lcom/google/android/gms/cast/framework/zzu;

    .line 56
    .line 57
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/zzu;->c:Lcom/google/android/gms/cast/framework/CastSession;

    .line 58
    .line 59
    iget-object v1, p2, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/cast/zzbm;->k()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iget-object p2, p2, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/zzbm;->p(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    .line 76
    .line 77
    return v0

    .line 78
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object v1, Lcom/google/android/gms/cast/LaunchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    .line 84
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/google/android/gms/cast/LaunchOptions;

    .line 89
    .line 90
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 91
    .line 92
    .line 93
    move-object p2, p0

    .line 94
    check-cast p2, Lcom/google/android/gms/cast/framework/zzu;

    .line 95
    .line 96
    iget-object v2, p2, Lcom/google/android/gms/cast/framework/zzu;->c:Lcom/google/android/gms/cast/framework/CastSession;

    .line 97
    .line 98
    iget-object v3, v2, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/cast/zzbm;->k()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 109
    .line 110
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/cast/zzbm;->o(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/tasks/Task;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v1, Lcom/google/android/gms/cast/framework/zzs;

    .line 115
    .line 116
    invoke-direct {v1, p2}, Lcom/google/android/gms/cast/framework/zzs;-><init>(Lcom/google/android/gms/cast/framework/zzu;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    .line 124
    .line 125
    return v0

    .line 126
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 135
    .line 136
    .line 137
    move-object p2, p0

    .line 138
    check-cast p2, Lcom/google/android/gms/cast/framework/zzu;

    .line 139
    .line 140
    iget-object v2, p2, Lcom/google/android/gms/cast/framework/zzu;->c:Lcom/google/android/gms/cast/framework/CastSession;

    .line 141
    .line 142
    iget-object v3, v2, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 143
    .line 144
    if-eqz v3, :cond_7

    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/google/android/gms/cast/zzbm;->k()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_7

    .line 151
    .line 152
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 153
    .line 154
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/cast/zzbm;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    new-instance v1, Lcom/google/android/gms/cast/framework/zzt;

    .line 159
    .line 160
    invoke-direct {v1, p2}, Lcom/google/android/gms/cast/framework/zzt;-><init>(Lcom/google/android/gms/cast/framework/zzu;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    .line 168
    .line 169
    return v0
.end method
