.class final synthetic Lcom/google/firebase/components/OptionalProvider$$Lambda$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final a:Lcom/google/firebase/components/OptionalProvider$$Lambda$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/components/OptionalProvider$$Lambda$5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/components/OptionalProvider$$Lambda$5;->a:Lcom/google/firebase/components/OptionalProvider$$Lambda$5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/firebase/components/OptionalProvider;->c:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    const/4 v0, 0x0

    return-object v0
.end method
