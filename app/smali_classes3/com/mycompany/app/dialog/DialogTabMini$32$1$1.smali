.class Lcom/mycompany/app/dialog/DialogTabMini$32$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogTabMini$32$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$32$1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$32$1$1;->f:Lcom/mycompany/app/dialog/DialogTabMini$32$1;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogTabMini$32$1$1;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$32$1$1;->f:Lcom/mycompany/app/dialog/DialogTabMini$32$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$32$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$32;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$32;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->c0:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogTabMini$32$1$1;->c:Z

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogTabMini;->K0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogDeleteItem;->B(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$32;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 28
    .line 29
    sget v1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogTabMini;->G(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$32;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->K()V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$32;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->Z()V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$32;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->b0()V

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$32;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 65
    .line 66
    sget v1, Lnet/kaki87/soul2/testing/R$string;->deleted:I

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
