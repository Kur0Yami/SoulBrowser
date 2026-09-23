.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$9;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$9;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    if-eqz v2, :cond_5

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->n:Lcom/mycompany/app/view/MyManagerLinear;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->z:Z

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget v3, v2, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 20
    .line 21
    add-int/lit8 v3, v3, -0x1

    .line 22
    .line 23
    if-lez v3, :cond_2

    .line 24
    .line 25
    iget v5, v1, Lcom/mycompany/app/dialog/DialogTabMini;->C0:I

    .line 26
    .line 27
    if-lez v5, :cond_2

    .line 28
    .line 29
    iget v6, v2, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 30
    .line 31
    add-int/lit8 v6, v6, -0x1

    .line 32
    .line 33
    div-int/2addr v6, v5

    .line 34
    sget v5, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 35
    .line 36
    invoke-virtual {v2, v5}, Lcom/mycompany/app/web/WebTabAdapter;->G(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    mul-int/2addr v2, v6

    .line 41
    sub-int/2addr v3, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v3, v4

    .line 44
    :cond_2
    :goto_0
    if-lez v3, :cond_3

    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->n:Lcom/mycompany/app/view/MyManagerLinear;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 49
    .line 50
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 51
    .line 52
    neg-int v0, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {v2, v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1(II)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->n:Lcom/mycompany/app/view/MyManagerLinear;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 62
    .line 63
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 66
    .line 67
    .line 68
    :goto_1
    sget v0, Lcom/mycompany/app/dialog/DialogTabMini;->H1:I

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->Z()V

    .line 71
    .line 72
    .line 73
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 74
    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$9$1;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$9$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$9;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_2
    return-void
.end method
