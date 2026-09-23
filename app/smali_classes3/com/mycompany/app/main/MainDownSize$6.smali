.class Lcom/mycompany/app/main/MainDownSize$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainUtil$LoopCancelListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainDownSize;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSize$6;->a:Lcom/mycompany/app/main/MainDownSize;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSize$6;->a:Lcom/mycompany/app/main/MainDownSize;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/mycompany/app/main/MainDownSize;->b:Z

    .line 4
    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method
