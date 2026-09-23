.class Lcom/mycompany/app/dialog/DialogAdNative$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogAdNative;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogAdNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative$9;->c:Lcom/mycompany/app/dialog/DialogAdNative;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative$9;->c:Lcom/mycompany/app/dialog/DialogAdNative;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->n0:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogAdNative;->F(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
