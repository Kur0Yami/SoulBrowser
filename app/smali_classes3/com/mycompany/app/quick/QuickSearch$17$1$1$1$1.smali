.class Lcom/mycompany/app/quick/QuickSearch$17$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$17$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$17$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$17$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$17$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$17$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$17$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$17$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$17$1$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch$17$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$17$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$17$1;->c:Lcom/mycompany/app/quick/QuickSearch$17;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$17;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 10
    .line 11
    sget v2, Lcom/mycompany/app/quick/QuickSearch;->f0:I

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickSearch;->l()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch$17$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$17$1;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$17$1;->c:Lcom/mycompany/app/quick/QuickSearch$17;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$17;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 21
    .line 22
    new-instance v2, Lcom/mycompany/app/quick/QuickSearch$13;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Lcom/mycompany/app/quick/QuickSearch$13;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$17$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$17$1;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$17$1;->c:Lcom/mycompany/app/quick/QuickSearch$17;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$17;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickSearch;->P:Z

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickSearch;->Q:Z

    .line 41
    .line 42
    return-void
.end method
