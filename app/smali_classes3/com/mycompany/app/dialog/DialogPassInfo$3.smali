.class Lcom/mycompany/app/dialog/DialogPassInfo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$3;->c:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$3;->c:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->x0:Lcom/mycompany/app/view/MyLineView;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyEditText;->setDrawEline(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->x0:Lcom/mycompany/app/view/MyLineView;

    .line 56
    .line 57
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const v1, -0xc0c0c1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const v1, -0x252526

    .line 66
    .line 67
    .line 68
    :goto_0
    iget p1, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->b0:F

    .line 69
    .line 70
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/view/MyLineView;->d(FI)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
