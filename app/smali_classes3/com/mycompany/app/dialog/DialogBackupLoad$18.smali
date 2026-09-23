.class Lcom/mycompany/app/dialog/DialogBackupLoad$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBackupLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$18;->c:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad$18;->c:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->x0:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->B0:I

    .line 10
    .line 11
    iget v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->R0:I

    .line 12
    .line 13
    iput v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->A0:I

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    iput-wide v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->C0:J

    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    sget v3, Lnet/kaki87/soul2/testing/R$string;->loading:I

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 27
    .line 28
    iget v3, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->A0:I

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->L(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->x0:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
