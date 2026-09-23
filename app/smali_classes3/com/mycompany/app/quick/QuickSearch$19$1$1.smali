.class Lcom/mycompany/app/quick/QuickSearch$19$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$19$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$19$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$19$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$19$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$19$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$19$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$19$1;->c:Lcom/mycompany/app/quick/QuickSearch$19;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$19;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
