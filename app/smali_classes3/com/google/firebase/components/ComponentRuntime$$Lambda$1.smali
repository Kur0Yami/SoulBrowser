.class final synthetic Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final a:Lcom/google/firebase/components/ComponentRuntime;

.field public final b:Lcom/google/firebase/components/Component;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->a:Lcom/google/firebase/components/ComponentRuntime;

    iput-object p2, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->b:Lcom/google/firebase/components/Component;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/firebase/components/ComponentRuntime;->f:Lcom/google/firebase/inject/Provider;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->b:Lcom/google/firebase/components/Component;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/firebase/components/Component;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 6
    .line 7
    new-instance v2, Lcom/google/firebase/components/RestrictedComponentContainer;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->a:Lcom/google/firebase/components/ComponentRuntime;

    .line 10
    .line 11
    invoke-direct {v2, v0, v3}, Lcom/google/firebase/components/RestrictedComponentContainer;-><init>(Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/google/firebase/components/ComponentFactory;->a(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
