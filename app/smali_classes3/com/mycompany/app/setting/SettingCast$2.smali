.class Lcom/mycompany/app/setting/SettingCast$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingCast;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingCast;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCast$2;->a:Lcom/mycompany/app/setting/SettingCast;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 9

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingCast;->Z1:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingCast$2;->a:Lcom/mycompany/app/setting/SettingCast;

    .line 4
    .line 5
    const/4 p4, 0x5

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_8

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p2, v1, :cond_6

    .line 11
    .line 12
    const/16 p3, 0x8

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    const/4 v3, 0x6

    .line 16
    if-eq p2, p4, :cond_0

    .line 17
    .line 18
    if-eq p2, v3, :cond_0

    .line 19
    .line 20
    if-eq p2, v2, :cond_0

    .line 21
    .line 22
    if-eq p2, p3, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingCast;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    if-eqz v4, :cond_2

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/mycompany/app/dialog/DialogCastGuide;->dismiss()V

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    iput-object v4, p1, Lcom/mycompany/app/setting/SettingCast;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 39
    .line 40
    :cond_2
    if-ne p2, p4, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    if-ne p2, v3, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    if-ne p2, v2, :cond_5

    .line 48
    .line 49
    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_5
    if-ne p2, p3, :cond_d

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    :goto_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 55
    .line 56
    invoke-direct {p2, p1, v0}, Lcom/mycompany/app/dialog/DialogCastGuide;-><init>(Lcom/mycompany/app/main/MainActivity;I)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingCast;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 60
    .line 61
    new-instance p3, Lcom/mycompany/app/setting/SettingCast$5;

    .line 62
    .line 63
    invoke-direct {p3, p1}, Lcom/mycompany/app/setting/SettingCast$5;-><init>(Lcom/mycompany/app/setting/SettingCast;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_6
    sput-boolean p3, Lcom/mycompany/app/pref/PrefMain;->t:Z

    .line 71
    .line 72
    iget-object p2, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 73
    .line 74
    const-string v0, "mCastLoop"

    .line 75
    .line 76
    invoke-static {p4, p2, v0, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 80
    .line 81
    if-eqz p1, :cond_d

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-nez p1, :cond_7

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_7
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/mycompany/app/cast/CastLocal;->c()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_8
    iput-boolean v0, p1, Lcom/mycompany/app/setting/SettingCast;->Y1:Z

    .line 102
    .line 103
    new-instance p2, Lcom/mycompany/app/setting/SettingCast$3;

    .line 104
    .line 105
    invoke-direct {p2, p1}, Lcom/mycompany/app/setting/SettingCast$3;-><init>(Lcom/mycompany/app/setting/SettingCast;)V

    .line 106
    .line 107
    .line 108
    iput-object p2, p1, Lcom/mycompany/app/setting/CastActivity;->m1:Lcom/mycompany/app/setting/CastActivity$MyCastCheckListener;

    .line 109
    .line 110
    sput-boolean p3, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 111
    .line 112
    iget-object p2, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 113
    .line 114
    const-string v1, "mCastOn"

    .line 115
    .line 116
    invoke-static {p4, p2, v1, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    sget-boolean p2, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 120
    .line 121
    if-nez p2, :cond_a

    .line 122
    .line 123
    iget-object p2, p1, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 124
    .line 125
    if-nez p2, :cond_9

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_9
    :try_start_1
    iget-object p2, p1, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 129
    .line 130
    if-eqz p2, :cond_a

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_a

    .line 137
    .line 138
    iget-object p2, p1, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p2, v0}, Lcom/google/android/gms/cast/framework/SessionManager;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .line 146
    .line 147
    :catch_1
    :cond_a
    :goto_1
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 148
    .line 149
    if-eqz p2, :cond_b

    .line 150
    .line 151
    sget-boolean p3, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 152
    .line 153
    xor-int/lit8 v6, p3, 0x1

    .line 154
    .line 155
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 156
    .line 157
    sget v3, Lnet/kaki87/soul2/testing/R$string;->repeat_play:I

    .line 158
    .line 159
    sget-boolean v5, Lcom/mycompany/app/pref/PrefMain;->t:Z

    .line 160
    .line 161
    const/4 v8, 0x2

    .line 162
    const/4 v2, 0x2

    .line 163
    const/4 v4, 0x0

    .line 164
    move v7, v6

    .line 165
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 169
    .line 170
    .line 171
    :cond_b
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 172
    .line 173
    if-nez p2, :cond_c

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_c
    new-instance p3, Lcom/mycompany/app/setting/SettingCast$4;

    .line 177
    .line 178
    invoke-direct {p3, p1}, Lcom/mycompany/app/setting/SettingCast$4;-><init>(Lcom/mycompany/app/setting/SettingCast;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    :cond_d
    :goto_2
    return-void
.end method
