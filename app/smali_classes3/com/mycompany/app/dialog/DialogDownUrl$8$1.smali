.class Lcom/mycompany/app/dialog/DialogDownUrl$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$8$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$8$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$8;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->F:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sput-boolean v2, Lcom/mycompany/app/pref/PrefRead;->F:Z

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    const-string v4, "mNotiPath"

    .line 17
    .line 18
    invoke-static {v3, v1, v4, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x0:Lcom/mycompany/app/view/MyLineRelative;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineRelative;->setNoti(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->R1:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v1, :cond_7

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x0:Lcom/mycompany/app/view/MyLineRelative;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    if-eqz v1, :cond_3

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 52
    .line 53
    .line 54
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 55
    .line 56
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 57
    .line 58
    if-eqz v1, :cond_8

    .line 59
    .line 60
    if-nez v6, :cond_4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->R1:Ljava/util/ArrayList;

    .line 64
    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->R1:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    move v4, v2

    .line 80
    move v5, v4

    .line 81
    :goto_0
    if-ge v5, v3, :cond_6

    .line 82
    .line 83
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    check-cast v8, Ljava/lang/String;

    .line 90
    .line 91
    new-instance v9, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 92
    .line 93
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v10, v8}, Lcom/mycompany/app/main/MainUri;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-direct {v9, v4, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 109
    .line 110
    sget v3, Lnet/kaki87/soul2/testing/R$string;->direct_select:I

    .line 111
    .line 112
    invoke-direct {v1, v4, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 119
    .line 120
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 121
    .line 122
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 123
    .line 124
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 125
    .line 126
    new-instance v9, Lcom/mycompany/app/dialog/DialogDownUrl$54;

    .line 127
    .line 128
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$54;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 129
    .line 130
    .line 131
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 132
    .line 133
    .line 134
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 135
    .line 136
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 140
    .line 141
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    :cond_8
    :goto_2
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l1:Z

    .line 149
    .line 150
    return-void
.end method
