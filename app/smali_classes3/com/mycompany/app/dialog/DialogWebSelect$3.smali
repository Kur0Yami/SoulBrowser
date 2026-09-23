.class Lcom/mycompany/app/dialog/DialogWebSelect$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebSelect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebSelect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebSelect$3;->a:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebSelect$3;->a:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->b0:Lcom/mycompany/app/dialog/DialogWebSelect$WebSelectListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Lcom/mycompany/app/dialog/DialogWebSelect$WebSelectListener;->a(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebSelect;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
