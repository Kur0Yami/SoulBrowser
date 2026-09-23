.class Lcom/mycompany/app/help/PayHelper$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic f:Lcom/mycompany/app/help/PayHelper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/help/PayHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/PayHelper$9;->f:Lcom/mycompany/app/help/PayHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/help/PayHelper$9;->c:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper$9;->c:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/mycompany/app/help/PayHelper$9;->f:Lcom/mycompany/app/help/PayHelper;

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/help/PayHelper;->a(Lcom/mycompany/app/help/PayHelper;Ljava/util/List;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
