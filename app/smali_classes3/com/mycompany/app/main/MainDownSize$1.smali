.class Lcom/mycompany/app/main/MainDownSize$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSize$1;->a:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSize$1;->a:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;->a(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
