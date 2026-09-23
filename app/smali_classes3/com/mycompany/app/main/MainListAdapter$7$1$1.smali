.class Lcom/mycompany/app/main/MainListAdapter$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter$7$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter$7$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$7$1$1;->c:Lcom/mycompany/app/main/MainListAdapter$7$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter$7$1$1;->c:Lcom/mycompany/app/main/MainListAdapter$7$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter$7$1;->c:Lcom/mycompany/app/main/MainListAdapter$7;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter$7;->g:Lcom/mycompany/app/main/MainListAdapter;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/MainListAdapter$7;->c:Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter$7;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/main/MainListAdapter;->x(Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
