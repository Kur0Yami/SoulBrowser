.class Lcom/mycompany/app/dialog/DialogMenuList$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$6;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList$6;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->C:Lcom/mycompany/app/view/MyPopupMenu;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogMenuList;->d()V

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$string;->small_list:I

    .line 30
    .line 31
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    move v3, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    move v3, v4

    .line 40
    :goto_0
    invoke-direct {v1, v4, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 47
    .line 48
    sget v2, Lnet/kaki87/soul2/testing/R$string;->large_list:I

    .line 49
    .line 50
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 51
    .line 52
    if-ne v3, v5, :cond_4

    .line 53
    .line 54
    move v3, v5

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    move v3, v4

    .line 57
    :goto_1
    invoke-direct {v1, v5, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 64
    .line 65
    sget v2, Lnet/kaki87/soul2/testing/R$string;->two_lines:I

    .line 66
    .line 67
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 68
    .line 69
    const/4 v7, 0x3

    .line 70
    if-ne v3, v7, :cond_5

    .line 71
    .line 72
    move v3, v5

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    move v3, v4

    .line 75
    :goto_2
    invoke-direct {v1, v7, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 82
    .line 83
    sget v2, Lnet/kaki87/soul2/testing/R$string;->three_lines:I

    .line 84
    .line 85
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 86
    .line 87
    const/4 v7, 0x4

    .line 88
    if-ne v3, v7, :cond_6

    .line 89
    .line 90
    move v3, v5

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    move v3, v4

    .line 93
    :goto_3
    invoke-direct {v1, v7, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 100
    .line 101
    sget v2, Lnet/kaki87/soul2/testing/R$string;->expand_mode:I

    .line 102
    .line 103
    sget v3, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 104
    .line 105
    const/4 v7, 0x2

    .line 106
    if-ne v3, v7, :cond_7

    .line 107
    .line 108
    move v4, v5

    .line 109
    :cond_7
    invoke-direct {v1, v7, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 116
    .line 117
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogMenuList;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 118
    .line 119
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogMenuList;->o:Lcom/mycompany/app/view/MyRoundLinear;

    .line 120
    .line 121
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 122
    .line 123
    new-instance v8, Lcom/mycompany/app/dialog/DialogMenuList$27;

    .line 124
    .line 125
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogMenuList$27;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 126
    .line 127
    .line 128
    move-object v5, p1

    .line 129
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 130
    .line 131
    .line 132
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuList;->C:Lcom/mycompany/app/view/MyPopupMenu;

    .line 133
    .line 134
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogMenuList;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 135
    .line 136
    if-eqz p1, :cond_8

    .line 137
    .line 138
    iput-object v2, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 139
    .line 140
    :cond_8
    :goto_4
    return-void
.end method
