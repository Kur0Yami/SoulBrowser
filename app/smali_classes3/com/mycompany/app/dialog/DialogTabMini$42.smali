.class Lcom/mycompany/app/dialog/DialogTabMini$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$42;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$42;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->x0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b(Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->w0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMini;->b0()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$42;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogTabMini;->E(Lcom/mycompany/app/dialog/DialogTabMini;IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogTabMini;->H1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$42;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMini;->V()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
