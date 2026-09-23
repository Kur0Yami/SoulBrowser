.class Lcom/mycompany/app/dialog/DialogImageType$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogImageType;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogImageType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageType$3;->c:Lcom/mycompany/app/dialog/DialogImageType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogImageType$3;->c:Lcom/mycompany/app/dialog/DialogImageType;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 9
    .line 10
    xor-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x7e

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_0
    iput v1, p1, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogImageType;->B()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
