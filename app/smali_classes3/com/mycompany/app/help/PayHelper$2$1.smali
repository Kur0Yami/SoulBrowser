.class Lcom/mycompany/app/help/PayHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic f:Lcom/mycompany/app/help/PayHelper$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/help/PayHelper$2;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/PayHelper$2$1;->f:Lcom/mycompany/app/help/PayHelper$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/help/PayHelper$2$1;->c:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper$2$1;->f:Lcom/mycompany/app/help/PayHelper$2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/help/PayHelper$2;->b:Lcom/mycompany/app/help/PayHelper;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/help/PayHelper$2$1;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/mycompany/app/help/PayHelper$2;->a:Z

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/help/PayHelper;->a(Lcom/mycompany/app/help/PayHelper;Ljava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
