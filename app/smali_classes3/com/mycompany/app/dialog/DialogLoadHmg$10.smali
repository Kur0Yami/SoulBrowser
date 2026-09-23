.class Lcom/mycompany/app/dialog/DialogLoadHmg$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogLoadHmg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadHmg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadHmg$10;->a:Lcom/mycompany/app/dialog/DialogLoadHmg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadHmg$10;->a:Lcom/mycompany/app/dialog/DialogLoadHmg;

    .line 2
    .line 3
    iget v0, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->k0:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method
