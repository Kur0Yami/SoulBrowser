.class Lcom/mycompany/app/dialog/DialogImageType$13;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageType$13;->c:Lcom/mycompany/app/dialog/DialogImageType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogImageType$13;->c:Lcom/mycompany/app/dialog/DialogImageType;

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
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 11
    .line 12
    xor-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget v1, p1, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 17
    .line 18
    or-int/lit8 v1, v1, 0x20

    .line 19
    .line 20
    iput v1, p1, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v1, p1, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 24
    .line 25
    and-int/lit8 v1, v1, -0x21

    .line 26
    .line 27
    iput v1, p1, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 28
    .line 29
    :goto_0
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 34
    .line 35
    iget v2, p1, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 36
    .line 37
    const/16 v3, 0x7e

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    .line 41
    move v2, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogImageType;->B()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
