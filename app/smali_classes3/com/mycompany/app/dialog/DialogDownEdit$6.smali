.class Lcom/mycompany/app/dialog/DialogDownEdit$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit$6;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit$6;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->A0:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->C0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->C0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 28
    .line 29
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->A0:Ljava/util/ArrayList;

    .line 37
    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->A0:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    move v4, v3

    .line 54
    :goto_0
    if-ge v4, v2, :cond_5

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    .line 64
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 65
    .line 66
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v8, v5}, Lcom/mycompany/app/main/MainUri;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-direct {v7, v3, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 82
    .line 83
    sget v2, Lnet/kaki87/soul2/testing/R$string;->direct_select:I

    .line 84
    .line 85
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 92
    .line 93
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 94
    .line 95
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 96
    .line 97
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 98
    .line 99
    new-instance v8, Lcom/mycompany/app/dialog/DialogDownEdit$13;

    .line 100
    .line 101
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogDownEdit$13;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 102
    .line 103
    .line 104
    move-object v5, p1

    .line 105
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 106
    .line 107
    .line 108
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->C0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 109
    .line 110
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 111
    .line 112
    :cond_6
    :goto_1
    return-void

    .line 113
    :cond_7
    :goto_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 114
    .line 115
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    return-void
.end method
