.class Lcom/mycompany/app/setting/SettingBackup$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingBackup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$12;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$12;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/setting/SettingBackup;->a2:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lcom/mycompany/app/setting/SettingBackup;->a2:I

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingBackup;->b2:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    new-instance v4, Lcom/mycompany/app/gdrive/GdriveManager;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v5, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v6, v0, Lcom/mycompany/app/setting/SettingBackup;->b2:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4, v5, v6}, Lcom/mycompany/app/gdrive/GdriveManager;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    iput-object v5, v4, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/mycompany/app/gdrive/GdriveManager;->a:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v4}, Lcom/mycompany/app/gdrive/DataGdrive;->b(Landroid/content/Context;)Lcom/mycompany/app/gdrive/DataGdrive;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iput-object v5, v4, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 48
    .line 49
    iput-object v5, v4, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 50
    .line 51
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 52
    .line 53
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    if-nez v3, :cond_4

    .line 59
    .line 60
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_24:I

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_24:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    move v3, v2

    .line 71
    :goto_1
    iget v5, v0, Lcom/mycompany/app/setting/SettingBackup;->j2:I

    .line 72
    .line 73
    if-ne v5, v3, :cond_5

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    iput v3, v0, Lcom/mycompany/app/setting/SettingBackup;->j2:I

    .line 77
    .line 78
    const/4 v5, 0x5

    .line 79
    invoke-virtual {v4, v5}, Lcom/mycompany/app/setting/SettingListAdapter;->v(I)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v4, v6}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    if-eqz v7, :cond_9

    .line 88
    .line 89
    iget v8, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 90
    .line 91
    if-eq v8, v5, :cond_6

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    iput v3, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->z:I

    .line 95
    .line 96
    invoke-virtual {v4, v6}, Lcom/mycompany/app/setting/SettingListAdapter;->x(I)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_9

    .line 101
    .line 102
    iget-object v4, v3, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 103
    .line 104
    if-nez v4, :cond_7

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    iget v5, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->z:I

    .line 108
    .line 109
    if-eqz v5, :cond_8

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v3, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    const/16 v3, 0x8

    .line 121
    .line 122
    invoke-virtual {v4, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    :cond_9
    :goto_2
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 126
    .line 127
    if-nez v3, :cond_a

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_a
    const/4 v4, 0x1

    .line 131
    if-ne v1, v4, :cond_b

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingBackup;->W0()V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_b
    const/4 v4, 0x2

    .line 138
    if-ne v1, v4, :cond_c

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Lcom/mycompany/app/setting/SettingBackup;->V0(Lcom/mycompany/app/gdrive/GdriveManager;)V

    .line 141
    .line 142
    .line 143
    :cond_c
    :goto_3
    invoke-virtual {v0, v2, v2}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V

    .line 144
    .line 145
    .line 146
    return-void
.end method
