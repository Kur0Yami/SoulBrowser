.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$14;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$14;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$14;->c:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebTabAdapter;->T(Z)V

    .line 12
    .line 13
    .line 14
    sget v2, Lcom/mycompany/app/dialog/DialogTabMini;->H1:I

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->Z()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMini;->b0()V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 23
    .line 24
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogTabMini;->B1:Z

    .line 25
    .line 26
    return-void
.end method
