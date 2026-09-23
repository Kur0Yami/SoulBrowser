.class Lcom/mycompany/app/main/list/MainListSearch$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListSearch$13;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListSearch$13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch$13$1;->c:Lcom/mycompany/app/main/list/MainListSearch$13;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch$13$1;->c:Lcom/mycompany/app/main/list/MainListSearch$13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListSearch$13;->c:Lcom/mycompany/app/main/list/MainListSearch;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListView;->M(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
