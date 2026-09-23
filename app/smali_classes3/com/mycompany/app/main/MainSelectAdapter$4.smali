.class Lcom/mycompany/app/main/MainSelectAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainSelectAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainSelectAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainSelectAdapter$4;->c:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter$4;->c:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
