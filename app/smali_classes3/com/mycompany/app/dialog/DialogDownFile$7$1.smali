.class Lcom/mycompany/app/dialog/DialogDownFile$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFile$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFile$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile$7$1;->c:Lcom/mycompany/app/dialog/DialogDownFile$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile$7$1;->c:Lcom/mycompany/app/dialog/DialogDownFile$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownFile$7;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->K0:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownFile;->q0:Lcom/mycompany/app/view/MyLineRelative;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->M0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 30
    .line 31
    .line 32
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownFile;->M0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 33
    .line 34
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 35
    .line 36
    if-eqz v1, :cond_7

    .line 37
    .line 38
    if-nez v6, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->K0:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->K0:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    move v4, v2

    .line 58
    move v5, v4

    .line 59
    :goto_0
    if-ge v5, v3, :cond_5

    .line 60
    .line 61
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    check-cast v8, Ljava/lang/String;

    .line 68
    .line 69
    new-instance v9, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 70
    .line 71
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v10, v8}, Lcom/mycompany/app/main/MainUri;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-direct {v9, v4, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 87
    .line 88
    sget v3, Lnet/kaki87/soul2/testing/R$string;->direct_select:I

    .line 89
    .line 90
    invoke-direct {v1, v4, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 97
    .line 98
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownFile;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 99
    .line 100
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 101
    .line 102
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 103
    .line 104
    new-instance v9, Lcom/mycompany/app/dialog/DialogDownFile$23;

    .line 105
    .line 106
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogDownFile$23;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 107
    .line 108
    .line 109
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 110
    .line 111
    .line 112
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownFile;->M0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 113
    .line 114
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 118
    .line 119
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->F4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    :cond_7
    :goto_2
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->G0:Z

    .line 127
    .line 128
    return-void
.end method
