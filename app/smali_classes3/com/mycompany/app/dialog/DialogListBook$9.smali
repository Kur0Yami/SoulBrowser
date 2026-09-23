.class Lcom/mycompany/app/dialog/DialogListBook$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogListBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListBook$9;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogListBook;->O:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$9;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->E:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogListBook;->E:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogListBook$9;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/dialog/DialogListBook;->y:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p2, :cond_c

    .line 8
    .line 9
    const/16 v3, 0x1b

    .line 10
    .line 11
    const/16 v4, 0x19

    .line 12
    .line 13
    if-eq p2, v2, :cond_5

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x0

    .line 17
    if-eq p2, v5, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq p2, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq p2, v1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    if-ne v0, v4, :cond_d

    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 30
    .line 31
    if-eqz p1, :cond_d

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lcom/mycompany/app/main/MainListView;->v0(Z)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    if-ne v0, v4, :cond_d

    .line 38
    .line 39
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 40
    .line 41
    if-eqz p1, :cond_d

    .line 42
    .line 43
    invoke-virtual {p1, v6}, Lcom/mycompany/app/main/MainListView;->v0(Z)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_2
    if-ne v0, v4, :cond_3

    .line 48
    .line 49
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 50
    .line 51
    if-eqz p1, :cond_d

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->u0()V

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :cond_3
    if-ne v0, v3, :cond_4

    .line 58
    .line 59
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 60
    .line 61
    if-eqz p1, :cond_d

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/mycompany/app/main/MainListView;->r0(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_4
    invoke-static {p1, v6}, Lcom/mycompany/app/dialog/DialogListBook;->o(Lcom/mycompany/app/dialog/DialogListBook;Z)V

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :cond_5
    if-eq v0, v4, :cond_7

    .line 72
    .line 73
    if-ne v0, v3, :cond_6

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    invoke-static {p1, v2}, Lcom/mycompany/app/dialog/DialogListBook;->o(Lcom/mycompany/app/dialog/DialogListBook;Z)V

    .line 77
    .line 78
    .line 79
    return v2

    .line 80
    :cond_7
    :goto_0
    :try_start_0
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogListBook;->w:Lcom/mycompany/app/main/MainActivity;

    .line 81
    .line 82
    if-nez p2, :cond_8

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_8
    new-instance p2, Landroid/content/Intent;

    .line 86
    .line 87
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 88
    .line 89
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "android.intent.category.OPENABLE"

    .line 93
    .line 94
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    const-string v1, "text/*"

    .line 98
    .line 99
    if-ne v0, v3, :cond_a

    .line 100
    .line 101
    :try_start_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v3, "js"

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_9

    .line 116
    .line 117
    const-string v0, "application/javascript"

    .line 118
    .line 119
    :cond_9
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v1, "*/*"

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const-string v1, "android.intent.extra.MIME_TYPES"

    .line 129
    .line 130
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_a
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v3, "txt"

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_b

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_b
    move-object v1, v0

    .line 152
    :goto_1
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    :goto_2
    const/16 v0, 0x41

    .line 156
    .line 157
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogListBook;->w:Lcom/mycompany/app/main/MainActivity;

    .line 161
    .line 162
    const/16 v0, 0x9

    .line 163
    .line 164
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/main/MainActivity;->t0(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .line 166
    .line 167
    return v2

    .line 168
    :cond_c
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 169
    .line 170
    if-eqz p1, :cond_d

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Lcom/mycompany/app/main/MainListView;->t0(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 173
    .line 174
    .line 175
    :catch_0
    :cond_d
    :goto_3
    return v2
.end method
