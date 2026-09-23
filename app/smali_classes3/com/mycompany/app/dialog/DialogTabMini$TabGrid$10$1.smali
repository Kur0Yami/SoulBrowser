.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 6
    .line 7
    iget v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->r:I

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v3, v2}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    iput-boolean v4, v1, Lcom/mycompany/app/dialog/DialogTabMini;->A1:Z

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v5, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    move v5, v6

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v5, v4

    .line 32
    :goto_0
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->F:Z

    .line 33
    .line 34
    if-nez v7, :cond_4

    .line 35
    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v7, v4

    .line 40
    goto :goto_2

    .line 41
    :cond_4
    :goto_1
    move v7, v6

    .line 42
    :goto_2
    if-eqz v7, :cond_5

    .line 43
    .line 44
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogTabMini;->a1:Lcom/mycompany/app/view/MySnackbar;

    .line 45
    .line 46
    if-eqz v8, :cond_5

    .line 47
    .line 48
    invoke-virtual {v8, v4}, Lcom/mycompany/app/view/MySnackbar;->i(Z)V

    .line 49
    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogTabMini;->a1:Lcom/mycompany/app/view/MySnackbar;

    .line 53
    .line 54
    :cond_5
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 55
    .line 56
    iget v9, v8, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 57
    .line 58
    if-ne v2, v9, :cond_6

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_6
    move v6, v4

    .line 62
    :goto_3
    iput-boolean v6, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->q:Z

    .line 63
    .line 64
    invoke-virtual {v8, v2, v7}, Lcom/mycompany/app/web/WebTabAdapter;->R(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_7

    .line 69
    .line 70
    iput-boolean v4, v1, Lcom/mycompany/app/dialog/DialogTabMini;->A1:Z

    .line 71
    .line 72
    return-void

    .line 73
    :cond_7
    iput-boolean v5, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->s:Z

    .line 74
    .line 75
    iput-boolean v7, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->t:Z

    .line 76
    .line 77
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->u:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 78
    .line 79
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$11;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$11;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
