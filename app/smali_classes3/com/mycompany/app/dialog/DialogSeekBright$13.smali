.class Lcom/mycompany/app/dialog/DialogSeekBright$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekBright;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekBright$13;->a:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSeekBright;->D0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekBright$13;->a:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekBright;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->x0:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->x0:Z

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekBright;->E()V

    .line 22
    .line 23
    .line 24
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v1, v3

    .line 27
    :goto_0
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->y0:I

    .line 28
    .line 29
    const/16 v5, 0x5a

    .line 30
    .line 31
    if-eq v4, v5, :cond_2

    .line 32
    .line 33
    iput v5, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->y0:I

    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->y0:I

    .line 43
    .line 44
    const-string v6, "%"

    .line 45
    .line 46
    invoke-static {v4, v5, v6, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 50
    .line 51
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->y0:I

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v2, v1

    .line 58
    :goto_1
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->e0:Landroid/view/Window;

    .line 61
    .line 62
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->y0:I

    .line 63
    .line 64
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->x0:Z

    .line 65
    .line 66
    invoke-static {v1, v2, v4}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogSeekBright;->D(Z)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
