.class Lcom/mycompany/app/dialog/DialogLoadEmg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogLoadEmg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg$3;->c:Lcom/mycompany/app/dialog/DialogLoadEmg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg$3;->c:Lcom/mycompany/app/dialog/DialogLoadEmg;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogLoadEmg;->dismiss()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogLoadEmg;->u0:Z

    .line 20
    .line 21
    iput v0, p1, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    iput-wide v1, p1, Lcom/mycompany/app/dialog/DialogLoadEmg;->r0:J

    .line 26
    .line 27
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogLoadEmg;->s0:Z

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    invoke-virtual {p1, v1}, Lcom/mycompany/app/dialog/DialogLoadEmg;->C(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_2
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogLoadEmg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 49
    .line 50
    new-instance v1, Lcom/mycompany/app/dialog/DialogLoadEmg$10;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogLoadEmg$10;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-virtual {v0, p1, p1, v1}, Lcom/mycompany/app/view/MyProgressBar;->k(ZILcom/mycompany/app/view/MyProgressBar$MyProgressListener;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
