.class Lcom/mycompany/app/quick/QuickSearch$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$19;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/quick/QuickSearch;->f0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$19;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSearch;->l()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$19$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$19$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$19;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
