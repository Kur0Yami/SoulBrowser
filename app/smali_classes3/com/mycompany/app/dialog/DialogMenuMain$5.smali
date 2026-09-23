.class Lcom/mycompany/app/dialog/DialogMenuMain$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$5;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$5;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-eqz v1, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 19
    .line 20
    .line 21
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 22
    .line 23
    :cond_2
    if-nez p1, :cond_3

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 32
    .line 33
    sget v2, Lnet/kaki87/soul2/testing/R$string;->small_list:I

    .line 34
    .line 35
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x1

    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    move v3, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_4
    move v3, v4

    .line 44
    :goto_1
    invoke-direct {v1, v4, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 51
    .line 52
    sget v2, Lnet/kaki87/soul2/testing/R$string;->large_list:I

    .line 53
    .line 54
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 55
    .line 56
    if-ne v3, v5, :cond_5

    .line 57
    .line 58
    move v3, v5

    .line 59
    goto :goto_2

    .line 60
    :cond_5
    move v3, v4

    .line 61
    :goto_2
    invoke-direct {v1, v5, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 68
    .line 69
    sget v2, Lnet/kaki87/soul2/testing/R$string;->two_lines:I

    .line 70
    .line 71
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 72
    .line 73
    const/4 v6, 0x3

    .line 74
    if-ne v3, v6, :cond_6

    .line 75
    .line 76
    move v3, v5

    .line 77
    goto :goto_3

    .line 78
    :cond_6
    move v3, v4

    .line 79
    :goto_3
    invoke-direct {v1, v6, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 86
    .line 87
    sget v2, Lnet/kaki87/soul2/testing/R$string;->three_lines:I

    .line 88
    .line 89
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 90
    .line 91
    const/4 v6, 0x4

    .line 92
    if-ne v3, v6, :cond_7

    .line 93
    .line 94
    move v3, v5

    .line 95
    goto :goto_4

    .line 96
    :cond_7
    move v3, v4

    .line 97
    :goto_4
    invoke-direct {v1, v6, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 104
    .line 105
    sget v2, Lnet/kaki87/soul2/testing/R$string;->expand_mode:I

    .line 106
    .line 107
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 108
    .line 109
    const/4 v6, 0x2

    .line 110
    if-ne v3, v6, :cond_8

    .line 111
    .line 112
    move v4, v5

    .line 113
    :cond_8
    invoke-direct {v1, v6, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 120
    .line 121
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 122
    .line 123
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->l0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 124
    .line 125
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 126
    .line 127
    new-instance v9, Lcom/mycompany/app/dialog/DialogMenuMain$22;

    .line 128
    .line 129
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$22;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 130
    .line 131
    .line 132
    move-object v6, p1

    .line 133
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 134
    .line 135
    .line 136
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 137
    .line 138
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 139
    .line 140
    return-void
.end method
