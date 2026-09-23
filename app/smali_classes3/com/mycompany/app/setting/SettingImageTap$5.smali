.class Lcom/mycompany/app/setting/SettingImageTap$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingImageTap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingImageTap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingImageTap$5;->c:Lcom/mycompany/app/setting/SettingImageTap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap$5;->c:Lcom/mycompany/app/setting/SettingImageTap;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_2
    check-cast p1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ltz p1, :cond_a

    .line 28
    .line 29
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 30
    .line 31
    array-length v0, v0

    .line 32
    if-lt p1, v0, :cond_3

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_3
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingImageTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_4
    if-eqz v0, :cond_5

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 48
    .line 49
    .line 50
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingImageTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 51
    .line 52
    :cond_5
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingImageTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    if-eqz v0, :cond_a

    .line 55
    .line 56
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 57
    .line 58
    if-nez v2, :cond_6

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_6
    aget-object v3, v0, p1

    .line 62
    .line 63
    if-nez v3, :cond_7

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_7
    const/4 v0, 0x0

    .line 67
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyLineText;->setNotiTop(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 71
    .line 72
    aget v2, v2, p1

    .line 73
    .line 74
    new-instance v4, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 80
    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v7, "P : "

    .line 84
    .line 85
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget v7, Lnet/kaki87/soul2/testing/R$string;->page_move:I

    .line 89
    .line 90
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    const/4 v7, 0x1

    .line 102
    if-nez v2, :cond_8

    .line 103
    .line 104
    move v8, v7

    .line 105
    goto :goto_0

    .line 106
    :cond_8
    move v8, v0

    .line 107
    :goto_0
    invoke-direct {v5, v6, v0, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 114
    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v8, "X : "

    .line 118
    .line 119
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget v8, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 123
    .line 124
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-ne v7, v2, :cond_9

    .line 136
    .line 137
    move v0, v7

    .line 138
    :cond_9
    invoke-direct {v5, v6, v7, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 145
    .line 146
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingImageTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 147
    .line 148
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 149
    .line 150
    new-instance v6, Lcom/mycompany/app/setting/SettingImageTap$8;

    .line 151
    .line 152
    invoke-direct {v6, v1, p1}, Lcom/mycompany/app/setting/SettingImageTap$8;-><init>(Lcom/mycompany/app/setting/SettingImageTap;I)V

    .line 153
    .line 154
    .line 155
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 156
    .line 157
    .line 158
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingImageTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 159
    .line 160
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 161
    .line 162
    :cond_a
    :goto_1
    return-void
.end method
