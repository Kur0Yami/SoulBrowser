.class Lcom/mycompany/app/main/MainListView$82$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView$82;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView$82;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$82$1;->c:Lcom/mycompany/app/main/MainListView$82;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$82$1;->c:Lcom/mycompany/app/main/MainListView$82;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView$82;->c:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    invoke-virtual {v1, v3, v4, v2}, Lcom/mycompany/app/main/MainListView;->o0(JZ)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView$82;->c:Lcom/mycompany/app/main/MainListView;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 14
    .line 15
    iget-object v3, v1, Lcom/mycompany/app/main/MainListView;->z1:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->A1:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView$82;->c:Lcom/mycompany/app/main/MainListView;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->y0()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView$82;->c:Lcom/mycompany/app/main/MainListView;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lcom/mycompany/app/main/MainListView;->z1:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, v0, Lcom/mycompany/app/main/MainListView;->A1:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method
