.class Lcom/mycompany/app/main/MainTransNews$9$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransNews$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransNews$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransNews$9$3;->c:Lcom/mycompany/app/main/MainTransNews$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransNews$9$3;->c:Lcom/mycompany/app/main/MainTransNews$9;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransNews$9;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/main/MainTransNews;->c:Lcom/mycompany/app/main/MainTransNews$TransNewsListener;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1, v2}, Lcom/mycompany/app/main/MainTransNews$TransNewsListener;->a(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransNews$9;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainTransNews;->o:Z

    .line 16
    .line 17
    return-void
.end method
