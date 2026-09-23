.class Lcom/mycompany/app/main/MainTransNews$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransNews;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransNews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransNews$4;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransNews$4;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransNews;->c:Lcom/mycompany/app/main/MainTransNews$TransNewsListener;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, v2}, Lcom/mycompany/app/main/MainTransNews$TransNewsListener;->a(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainTransNews;->o:Z

    .line 12
    .line 13
    return-void
.end method
